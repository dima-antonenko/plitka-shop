class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.string :meta_title
      t.string :meta_description
      t.string :meta_keywords
      t.timestamps null: false
    end
  end
end
