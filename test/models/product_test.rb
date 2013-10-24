require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "name" do
    product = products(:test)
    p product.errors.full_messages
    assert_equal "Example", product.name 
    # assert_equal 'Test', product.name
  end
end
