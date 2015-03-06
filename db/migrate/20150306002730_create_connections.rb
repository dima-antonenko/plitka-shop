class CreateConnections < ActiveRecord::Migration
  def change
  	add_column :categories, :category_id, :integer, index: true
  	remove_column :collections, :category_id
  	
    create_table :connections do |t|
      t.belongs_to :collection, index: true
      t.belongs_to :category, index: true
      t.timestamps null: false
    end
  end
end
