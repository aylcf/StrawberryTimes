json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :image_url, :price, :detail_text_1, :detail_image_url_1, :detail_text_2, :detail_image_url_2, :detail_text_3, :detail_image_url_3, :detail_text_4, :detail_image_url_4, :detail_text_5, :detail_image_url_5
  json.url product_url(product, format: :json)
end
