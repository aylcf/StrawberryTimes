require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
        :title => '红颜草莓',
        :description => '因果实鲜红漂亮而得名。具有叶绿、花白、果红、味佳的品质，极品红颜特点是个大、色红、味甜。',
        :image_url => 'hongyan-235150.jpg',
        :price => 49
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { description: @product.description, detail_image_url_1: @product.detail_image_url_1, detail_image_url_2: @product.detail_image_url_2, detail_image_url_3: @product.detail_image_url_3, detail_image_url_4: @product.detail_image_url_4, detail_image_url_5: @product.detail_image_url_5, detail_text_1: @product.detail_text_1, detail_text_2: @product.detail_text_2, detail_text_3: @product.detail_text_3, detail_text_4: @product.detail_text_4, detail_text_5: @product.detail_text_5, image_url: @product.image_url, price: @product.price, title: @product.title }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, :id => @product.to_param, :product => @update
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
