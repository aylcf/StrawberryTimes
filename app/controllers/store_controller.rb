class StoreController < ApplicationController
  skip_before_filter :authorize

  def index
    # 应用了分页插件
    @products = Product.order('id').page(params[:page]).per(20)
    @cart = current_cart

    @buy_quantity = Hash.new

    @line_items = @cart.line_items

    @products.each do |product|
      @buy_quantity[product.id] = 1
    end

      if @line_items.empty?
      else
        @line_items.each do |item|
          @buy_quantity[item.product_id] = item.quantity

        end
      end

  end

end
