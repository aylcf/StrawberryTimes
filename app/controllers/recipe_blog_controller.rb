class RecipeBlogController < ApplicationController
  skip_before_filter :authorize

  def index
    # 应用了分页插件
    @recipes = Recipe.order('id').page(params[:page]).per(20)
  end
end
