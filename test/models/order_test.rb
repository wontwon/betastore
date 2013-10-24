require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  
  test "An order placed yesterday is returned by recent" do
    assert Order.recent.include?(orders(:yesterday))
  end

  test "An order placed 10 days ago is not returned by recent" do
    assert !Order.recent.include?(orders(:ten_days_ago))
  end
  
end
