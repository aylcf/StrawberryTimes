class CreateAllianceGardens < ActiveRecord::Migration
  def change
    create_table :alliance_gardens do |t|
      t.string :title
      t.text :content
      t.string :manager
      t.string :mobile
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
