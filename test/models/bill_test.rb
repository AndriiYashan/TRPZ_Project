require "test_helper"

class BillTest < ActiveSupport::TestCase
  test "should not save bill without price" do
    bill = Bill.new
    assert_not bill.save ,"saved the bill without price"
  end
end
