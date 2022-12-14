require "test_helper"

class PayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payer = payers(:one)
  end

  test "should get index" do
    get payers_url
    assert_response :success
  end

  test "should get new" do
    get new_payer_url
    assert_response :success
  end

  test "should create payer" do
    assert_difference("Payer.count") do
      post payers_url, params: { payer: { account: @payer.account, active_record: @payer.active_record, bill_name: @payer.bill_name, invoke: @payer.invoke, name: @payer.name, sum: @payer.sum } }
    end

    assert_redirected_to payer_url(Payer.last)
  end

  test "should show payer" do
    get payer_url(@payer)
    assert_response :success
  end

  test "should get edit" do
    get edit_payer_url(@payer)
    assert_response :success
  end

  test "should update payer" do
    patch payer_url(@payer), params: { payer: { account: @payer.account, active_record: @payer.active_record, bill_name: @payer.bill_name, invoke: @payer.invoke, name: @payer.name, sum: @payer.sum } }
    assert_redirected_to payer_url(@payer)
  end

  test "should destroy payer" do
    assert_difference("Payer.count", -1) do
      delete payer_url(@payer)
    end

    assert_redirected_to payers_url
  end
end
