require 'test_helper'

class AllianceGardensControllerTest < ActionController::TestCase
  setup do
    @alliance_garden = alliance_gardens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alliance_gardens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alliance_garden" do
    assert_difference('AllianceGarden.count') do
      post :create, alliance_garden: { address: @alliance_garden.address, content: @alliance_garden.content, manager: @alliance_garden.manager, mobile: @alliance_garden.mobile, phone: @alliance_garden.phone, title: @alliance_garden.title }
    end

    assert_redirected_to alliance_garden_path(assigns(:alliance_garden))
  end

  test "should show alliance_garden" do
    get :show, id: @alliance_garden
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alliance_garden
    assert_response :success
  end

  test "should update alliance_garden" do
    patch :update, id: @alliance_garden, alliance_garden: { address: @alliance_garden.address, content: @alliance_garden.content, manager: @alliance_garden.manager, mobile: @alliance_garden.mobile, phone: @alliance_garden.phone, title: @alliance_garden.title }
    assert_redirected_to alliance_garden_path(assigns(:alliance_garden))
  end

  test "should destroy alliance_garden" do
    assert_difference('AllianceGarden.count', -1) do
      delete :destroy, id: @alliance_garden
    end

    assert_redirected_to alliance_gardens_path
  end
end
