# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create(:title => '红颜草莓',
               :description =>
                   %{<p>
                      因果实鲜红漂亮而得名。具有叶绿、花白、果红、味佳的品质，极品红颜特点是个大、色红、味甜。单体个头出奇地大，是一般品种的两倍。果味浓郁，甜度能达到14%至16%，而一般草莓甜度只有10%左右。口味浓甜，气味芳香。
                   </p>},
               :image_url => 'hongyan-235150.jpg',
               :price => 49
)

Product.create(:title => '章姬',
                :description =>
                    %{<p>
                      是一种较好的草莓品种，引进自日本。原本就有一股奶香味。果形呈长圆锥形，大如鸡蛋，果肉软、多汁、味甜，口感实心味美，水嫩多汁，深得草莓迷的青睐。
                    </p>},
                :image_url => 'zhangji-235157.jpg',
                :price => 68
)

Product.create(:title => '御用',
               :description =>
                   %{<p>
                      全名皇家御用，曾经是专供日本皇室食用的草莓，彰显尊贵，在日本是排名第一的草莓。果实呈完美的圆锥形并具有透亮的蜡质层，颜色鲜亮，具有透亮的红色光泽，果肉自内外向里呈酒红色，有浓郁的草莓香味，入口多汁香甜，唇齿留香，回味无穷！
                   </p>},
               :image_url => 'huangjiayuyong-2-235-146.jpg',
               :price => 88
)


Recipe.create(:title => '草莓重芝士蛋糕',
               :description =>
                   %{健康功效：黄油：富含热量、富含脂肪、富含胆固醇},
               :image_url => 'recipes\1\logo_big.jpg',
)

Order.transaction do
  (1..100).each do |i|
    Order.create(:name => "Customer #{i}", :phone => "#139-1888-#{i}", :address => "#{i} Main Street", :email => "customer-#{i}@example.com", :pay_type => '支付宝')
  end
end

Member.transaction do
  (1..100).each do |i|
    Member.create(:name => "Member #{i}", :email => "Member-#{i}@example.com", :phone => "139-1888-#{i}", :address => "#{i} Main Street", :pay_type => '支付宝', :register_time => "2015-01-19")
  end
end