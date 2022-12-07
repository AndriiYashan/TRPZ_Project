require "test_helper"

class BillTest < ActionDispatch::IntegrationTest
  test "can see the welcome page" do
    get "/"
    assert_select "h1", "Bills"
  end
end
