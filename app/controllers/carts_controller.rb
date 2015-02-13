class CartsController < ApplicationController
  skip_before_filter :authorize, only: [:create, :update, :destroy]

  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
    begin
      @cart = Cart.find(params[:id])
      session[:total_price] = @cart.total_price
    rescue ActiveRecord::RecordNotFound
      logger.error "尝试访问无效的购物车。 #{params[:id]}"
      redirect_to store_index_url, :notice => '无效的购物车。'
    else
      respond_to do |format|
        format.html # show.html.erb
        format.json { head :no_content }   # 此处原书中是 format.xml { render :xml => @cart }
      end
    end
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: '您的购物车中新添加了商品。' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: '购物车里是最新的商品信息了。' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil
    session[:total_price]=nil

    respond_to do |format|
      format.html { redirect_to store_index_url, notice: '您的购物车已经清空了。欢迎您再次选购！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      begin
        @cart = Cart.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        logger.error "Attempt to access invalid cart #{params[:id]}"
        redirect_to store_index_url, :notice => '无效的购物车。'

      end

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params[:cart]
    end
end


