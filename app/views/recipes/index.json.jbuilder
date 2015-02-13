json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :description, :image_url, :detail_text_1, :detail_image_url_1, :detail_text_2, :detail_image_url_2, :detail_text_3, :detail_image_url_3, :detail_text_4, :detail_image_url_4, :detail_text_5, :detail_image_url_5, :detail_text_6, :detail_image_url_6, :detail_text_7, :detail_image_url_7, :detail_text_8, :detail_image_url_8, :detail_text_9, :detail_image_url_9, :detail_text_10, :detail_image_url_10, :detail_text_11, :detail_image_url_11, :detail_text_12, :detail_image_url_12, :detail_text_13, :detail_image_url_13, :detail_text_14, :detail_image_url_14, :detail_text_15, :detail_image_url_15
  json.url recipe_url(recipe, format: :json)
end
