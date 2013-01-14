require 'test_helper'

class TransactControllerTest < ActionController::TestCase
  test "should get invest" do
    get :invest
    assert_response :success
  end

  test "should get buy" do
    get :buy
    assert_response :success
  end

  test "should get sell" do
    get :sell
    assert_response :success
  end

  test "should get donate" do
    get :donate
    assert_response :success
  end

end
