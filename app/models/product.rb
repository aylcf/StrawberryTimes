class Product < ActiveRecord::Base
  has_many :line_items
  has_many :orders, :through => :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  # 添加验证，验证字段为非空（:presence=>true 让验证器核实每个字段都存在，并且内容不为空
  validates :title, :description, :image_url, :presence => true

  # 验证价格是一个有效的正数，用numericality
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}

  # 验证输入图像的URL是否有效。用format。用正则表达式相匹配。
  # validates :image_url, :detail_image_url_1, :detail_image_url_2, :detail_image_url_3, :detail_image_url_4, :detail_image_url_5,
  #          :format => {
  #              :with => %r{\.(gif|jpg|png)$}i,
  #              :message => '必须是gif,jpg或png格式的图片。'
  #         }

  private
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end
end
