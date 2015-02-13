class RecipesController < ApplicationController
  skip_before_filter :authorize
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    # 应用了分页插件
    @recipes = Recipe.order('id').page(params[:page]).per(20)

  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:title, :description, :image_url, :detail_text_1, :detail_image_url_1, :detail_text_2, :detail_image_url_2, :detail_text_3, :detail_image_url_3, :detail_text_4, :detail_image_url_4, :detail_text_5, :detail_image_url_5, :detail_text_6, :detail_image_url_6, :detail_text_7, :detail_image_url_7, :detail_text_8, :detail_image_url_8, :detail_text_9, :detail_image_url_9, :detail_text_10, :detail_image_url_10, :detail_text_11, :detail_image_url_11, :detail_text_12, :detail_image_url_12, :detail_text_13, :detail_image_url_13, :detail_text_14, :detail_image_url_14, :detail_text_15, :detail_image_url_15)
    end
end
