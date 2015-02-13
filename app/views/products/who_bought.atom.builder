atom_feed do |feed|
  feed.title "顾客信息 #{@product.title}"

  latest_order = @product.orders.sort_by(&:updated_at).last
  feed.updated( latest_order && latest_order.updated_at)

  @product.orders.each do |order|
    feed.entry(order) do |entry|
      entry.title "订单 #{order.id}"
      entry.summary :type => 'xhtml' do |xhtml|
        xhtml.p "快递地址：#{order.address}"

        xhtml.table do
          xhtml.tr do
            xhtml.th '商品'
            xhtml.th '数量'
            xhtml.th '小计'
          end

          order.line_items.each do |item|
            xhtml.tr do
              xhtml.td item.product.title
              xhtml.td item.quantity
              xhtml.td number_to_currency item.total_price
            end
          end
          xhtml.tr do
            xhtml.th '总金额', :colspan => 2
            xhtml.th number_to_currency order.line_items.map(&:total_price).sum
          end
        end

        xhtml.p "付款方式： #{order.pay_type}"
      end
      entry.author do |author|
        entry.name order.name
        entry.email order.email
      end
    end
  end
end