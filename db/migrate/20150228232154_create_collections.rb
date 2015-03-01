class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.belongs_to :category, index: true 
      t.string :name, index: true
      t.string :description, index: true
      t.string :interior_list, index: true
      t.string :brand
      t.string :country
      t.string :size
      t.string :meta_title
      t.string :meta_description
      t.string :meta_keywords
      t.timestamps null: false
    end
  end
end
