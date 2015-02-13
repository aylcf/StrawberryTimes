require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post :create, recipe: { description: @recipe.description, detail_image_url_10: @recipe.detail_image_url_10, detail_image_url_11: @recipe.detail_image_url_11, detail_image_url_12: @recipe.detail_image_url_12, detail_image_url_13: @recipe.detail_image_url_13, detail_image_url_14: @recipe.detail_image_url_14, detail_image_url_15: @recipe.detail_image_url_15, detail_image_url_1: @recipe.detail_image_url_1, detail_image_url_2: @recipe.detail_image_url_2, detail_image_url_3: @recipe.detail_image_url_3, detail_image_url_4: @recipe.detail_image_url_4, detail_image_url_5: @recipe.detail_image_url_5, detail_image_url_6: @recipe.detail_image_url_6, detail_image_url_7: @recipe.detail_image_url_7, detail_image_url_8: @recipe.detail_image_url_8, detail_image_url_9: @recipe.detail_image_url_9, detail_text_10: @recipe.detail_text_10, detail_text_11: @recipe.detail_text_11, detail_text_12: @recipe.detail_text_12, detail_text_13: @recipe.detail_text_13, detail_text_14: @recipe.detail_text_14, detail_text_15: @recipe.detail_text_15, detail_text_1: @recipe.detail_text_1, detail_text_2: @recipe.detail_text_2, detail_text_3: @recipe.detail_text_3, detail_text_4: @recipe.detail_text_4, detail_text_5: @recipe.detail_text_5, detail_text_6: @recipe.detail_text_6, detail_text_7: @recipe.detail_text_7, detail_text_8: @recipe.detail_text_8, detail_text_9: @recipe.detail_text_9, image_url: @recipe.image_url, title: @recipe.title }
    end

    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should show recipe" do
    get :show, id: @recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe
    assert_response :success
  end

  test "should update recipe" do
    patch :update, id: @recipe, recipe: { description: @recipe.description, detail_image_url_10: @recipe.detail_image_url_10, detail_image_url_11: @recipe.detail_image_url_11, detail_image_url_12: @recipe.detail_image_url_12, detail_image_url_13: @recipe.detail_image_url_13, detail_image_url_14: @recipe.detail_image_url_14, detail_image_url_15: @recipe.detail_image_url_15, detail_image_url_1: @recipe.detail_image_url_1, detail_image_url_2: @recipe.detail_image_url_2, detail_image_url_3: @recipe.detail_image_url_3, detail_image_url_4: @recipe.detail_image_url_4, detail_image_url_5: @recipe.detail_image_url_5, detail_image_url_6: @recipe.detail_image_url_6, detail_image_url_7: @recipe.detail_image_url_7, detail_image_url_8: @recipe.detail_image_url_8, detail_image_url_9: @recipe.detail_image_url_9, detail_text_10: @recipe.detail_text_10, detail_text_11: @recipe.detail_text_11, detail_text_12: @recipe.detail_text_12, detail_text_13: @recipe.detail_text_13, detail_text_14: @recipe.detail_text_14, detail_text_15: @recipe.detail_text_15, detail_text_1: @recipe.detail_text_1, detail_text_2: @recipe.detail_text_2, detail_text_3: @recipe.detail_text_3, detail_text_4: @recipe.detail_text_4, detail_text_5: @recipe.detail_text_5, detail_text_6: @recipe.detail_text_6, detail_text_7: @recipe.detail_text_7, detail_text_8: @recipe.detail_text_8, detail_text_9: @recipe.detail_text_9, image_url: @recipe.image_url, title: @recipe.title }
    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete :destroy, id: @recipe
    end

    assert_redirected_to recipes_path
  end
end
