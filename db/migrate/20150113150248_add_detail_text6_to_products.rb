class AddDetailText6ToProducts < ActiveRecord::Migration
  def change
    add_column :products, :detail_text_6, :text
  end
end
