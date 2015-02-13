class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authorize

  # GET /products
  # GET /products.json
  def index
    # 应用了分页插件
    @products = Product.order('id').page(params[:page]).per(20)
  end


  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    @cart = current_cart

    @buy_quantity = Hash.new

    @line_items = @cart.line_items

    @buy_quantity[:is_selected] = false  # 标记为未选购
    @buy_quantity[@product.id] = 1

    if @line_items.empty?
    else
      @line_items.each do |item|
        if item.product_id == @product.id
          @buy_quantity[@product.id] = item.quantity
          @buy_quantity[:is_selected] = true  # 标记为已选购
        end
      end
    end

  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: '商品信息创建成功！' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: '商品信息更新成功！' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: '商品信息删除成功！' }
      format.json { head :no_content }
    end
  end

  def woh_bought
    @product = Product.find(params[:id])
    respond_to do |format|
      format.atom
      format.xml { render :xml => @product }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price, :detail_text_1, :detail_image_url_1, :detail_text_2, :detail_image_url_2, :detail_text_3, :detail_image_url_3, :detail_text_4, :detail_image_url_4, :detail_text_5, :detail_image_url_5, :detail_text_6, :detail_image_url_6, :detail_text_7, :detail_image_url_7, :detail_text_8, :detail_image_url_8, :detail_text_9, :detail_image_url_9, :detail_text_10, :detail_image_url_10,:detail_text_11, :detail_image_url_11, :detail_text_12, :detail_image_url_12, :detail_text_13, :detail_image_url_13, :detail_text_14, :detail_image_url_14, :detail_text_15, :detail_image_url_15)
    end



end
