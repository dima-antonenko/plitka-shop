class AddFieldToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :ballance, :integer
  	add_column :products, :ballance_count, :decimal
  	add_column :products, :category, :string
  	add_column :products, :design_value, :string
  	add_column :products, :frost_hardiness, :string
  	add_column :products, :rectified, :string
  end
end
