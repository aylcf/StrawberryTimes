require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get jianianhua" do
    get :jianianhua
    assert_response :success
  end

  test "should get worldcongress" do
    get :worldcongress
    assert_response :success
  end

end
