class Order < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  PAYMENT_TYPES = ['支付宝', '手机银行卡付款', '货到付款']  # order订单页面中付款方式选项下拉列表数组(select帮助方法)

  # 订单输入项的验证，但目前提醒都是英文。不友好。
  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES


  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  def add_or_update_member(cur_order)
    if @member = Member.find_by_email(cur_order.email)  # 可能会出现用户登记的会员名和订单名不同的情况！但电邮名可以区分。
      if @member.order_name.empty?
        @member.order_name = cur_order.name
      end
      if @member.phone.empty?
        @member.phone = cur_order.phone
      end
      if @member.address.empty?
        @member.address = cur_order.address
      end
      if @member.pay_type.empty?
        @member.pay_type = cur_order.pay_type
      end
      @member.save

    else  # 如果找不到有此电邮的会员，则创建新会员
      Member.create(:name=>cur_order.name, :order_name=>cur_order.name, :email=>cur_order.email, :phone=>cur_order.phone, :address=>cur_order.address, :pay_type=>cur_order.pay_type, :register_time=>Time.now)
    end
  end
end
