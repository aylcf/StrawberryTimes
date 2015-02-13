class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.text :detail_text_1
      t.string :detail_image_url_1
      t.text :detail_text_2
      t.string :detail_image_url_2
      t.text :detail_text_3
      t.string :detail_image_url_3
      t.text :detail_text_4
      t.string :detail_image_url_4
      t.text :detail_text_5
      t.string :detail_image_url_5
      t.text :detail_text_6
      t.string :detail_image_url_6
      t.text :detail_text_7
      t.string :detail_image_url_7
      t.text :detail_text_8
      t.string :detail_image_url_8
      t.text :detail_text_9
      t.string :detail_image_url_9
      t.text :detail_text_10
      t.string :detail_image_url_10
      t.text :detail_text_11
      t.string :detail_image_url_11
      t.text :detail_text_12
      t.string :detail_image_url_12
      t.text :detail_text_13
      t.string :detail_image_url_13
      t.text :detail_text_14
      t.string :detail_image_url_14
      t.text :detail_text_15
      t.string :detail_image_url_15

      t.timestamps
    end
  end
end
