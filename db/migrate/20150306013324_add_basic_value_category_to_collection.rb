class AddBasicValueCategoryToCollection < ActiveRecord::Migration
  def change
  	add_column :collections, :basic_category, :integer
  end
end
