require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "index" do 
    get :index
    # assert_response :success
    # puts @response.body  
    assert_select "div img", count: 1
  end

   test "show" do 
    get :show, id: products(:test).id
    # assert_response :success
    puts @response.body  
    assert_response :success

    assert_select "h1", text: "hello", count: 1
    assert_select "p", text: "Example", count: 1

  end

end