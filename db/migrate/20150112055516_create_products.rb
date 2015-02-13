class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, :precision => 8, :scale =>0
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

      t.timestamps
    end
  end
end

