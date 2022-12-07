require "application_system_test_case"

class PayersTest < ApplicationSystemTestCase
  setup do
    @payer = payers(:one)
  end

  test "visiting the index" do
    visit payers_url
    assert_selector "h1", text: "Payers"
  end

  test "should create payer" do
    visit payers_url
    click_on "New payer"

    fill_in "Account", with: @payer.account
    fill_in "Active record", with: @payer.active_record
    fill_in "Bill name", with: @payer.bill_name
    fill_in "Invoke", with: @payer.invoke
    fill_in "Name", with: @payer.name
    fill_in "Sum", with: @payer.sum
    click_on "Create Payer"

    assert_text "Payer was successfully created"
    click_on "Back"
  end

  test "should update Payer" do
    visit payer_url(@payer)
    click_on "Edit this payer", match: :first

    fill_in "Account", with: @payer.account
    fill_in "Active record", with: @payer.active_record
    fill_in "Bill name", with: @payer.bill_name
    fill_in "Invoke", with: @payer.invoke
    fill_in "Name", with: @payer.name
    fill_in "Sum", with: @payer.sum
    click_on "Update Payer"

    assert_text "Payer was successfully updated"
    click_on "Back"
  end

  test "should destroy Payer" do
    visit payer_url(@payer)
    click_on "Destroy this payer", match: :first

    assert_text "Payer was successfully destroyed"
  end
end
