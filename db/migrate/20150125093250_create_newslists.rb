class CreateNewslists < ActiveRecord::Migration
  def change
    create_table :newslists do |t|
      t.string :title
      t.string :posttime
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
