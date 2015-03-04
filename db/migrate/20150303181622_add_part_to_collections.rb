class AddPartToCollections < ActiveRecord::Migration
  def change
  	add_column :collections, :to_bathroom, :boolean
  	add_column :collections, :to_kitchen, :boolean
  	add_column :collections, :to_corridor, :boolean
  	add_column :collections, :to_living, :boolean
  	add_column :collections, :to_fasad, :boolean
  	add_column :collections, :to_floor, :boolean
  	add_column :collections, :to_construction, :boolean
  	add_column :collections, :to_public, :boolean
  end
end
