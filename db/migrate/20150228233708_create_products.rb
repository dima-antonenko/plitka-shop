class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :collection, index: true
      t.string :name, index: true
      t.string :code, index: true
      t.integer :price, index: true
      t.string :edizm
      t.string :field_of_application_list, index: true
      t.string :place_in_the_collection
      t.string :minpart
      t.string :cratnost
      t.string :weight
      t.string :size
      t.string :architectural_surface
      t.string :base_value
      t.string :color_value
      t.string :cover_value
      t.string :surface_alue
      t.string :image, index: true
 	  t.string :meta_title
      t.string :meta_description
      t.string :meta_keywords
      t.timestamps null: false
    end
  end
end
