class OrdersController < ApplicationController
  skip_before_filter :authorize, only: [:create, :new]

  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    # 在controllers/orders_controller.rb用到了will_paginate分页插件gem包, per_page用来设置每页显示的行数
    # 在view/orders/index.html.erb下有控制视图的句子。
    @orders = Order.order('id desc').page(params[:page]).per(20)

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @cart = current_cart
    if @cart.line_items.empty?
      redirect_to store_index_url, :notice => '您的购物车里还没有商品呢，快去选购精美商品吧。'
      return
    end
    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @order }
    end
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(current_cart)

    respond_to do |format|
      if @order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil

        @order.add_or_update_member(@order)  # 新增或更新会员信息

        format.html { redirect_to store_index_url, notice: '非常感谢您的惠顾，我们将为您开启愉悦的甜蜜皇后之旅！有任何疑问请联系我们的草莓仙子。' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :phone, :email, :address, :pay_type, :created_at)
    end
end
