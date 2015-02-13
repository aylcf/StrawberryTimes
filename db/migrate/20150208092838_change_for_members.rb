class ChangeForMembers < ActiveRecord::Migration
  def change
    add_column :members, :name, :string
    add_column :members, :order_name, :string
    add_column :members, :phone, :string
    add_column :members, :address, :text
    add_column :members, :pay_type, :string
    add_column :members, :register_time, :string

  end
end
