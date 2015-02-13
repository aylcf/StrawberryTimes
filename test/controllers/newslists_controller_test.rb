require 'test_helper'

class NewslistsControllerTest < ActionController::TestCase
  setup do
    @newslist = newslists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newslists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newslist" do
    assert_difference('Newslist.count') do
      post :create, newslist: { content: @newslist.content, image: @newslist.image, posttime: @newslist.posttime, title: @newslist.title }
    end

    assert_redirected_to newslist_path(assigns(:newslist))
  end

  test "should show newslist" do
    get :show, id: @newslist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newslist
    assert_response :success
  end

  test "should update newslist" do
    patch :update, id: @newslist, newslist: { content: @newslist.content, image: @newslist.image, posttime: @newslist.posttime, title: @newslist.title }
    assert_redirected_to newslist_path(assigns(:newslist))
  end

  test "should destroy newslist" do
    assert_difference('Newslist.count', -1) do
      delete :destroy, id: @newslist
    end

    assert_redirected_to newslists_path
  end
end
