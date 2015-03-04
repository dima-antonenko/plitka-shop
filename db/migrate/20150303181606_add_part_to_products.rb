class AddPartToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :to_bathroom, :boolean
  	add_column :products, :to_kitchen, :boolean
  	add_column :products, :to_corridor, :boolean
  	add_column :products, :to_living, :boolean
  	add_column :products, :to_fasad, :boolean
  	add_column :products, :to_floor, :boolean
  	add_column :products, :to_construction, :boolean
  	add_column :products, :to_public, :boolean
  end
end
