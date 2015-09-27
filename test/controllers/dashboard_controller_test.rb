require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get expense" do
    get :expense
    assert_response :success
  end

  test "should get owe" do
    get :owe
    assert_response :success
  end

  test "should get i_owe" do
    get :i_owe
    assert_response :success
  end

end
