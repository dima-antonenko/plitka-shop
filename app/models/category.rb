class Category < ActiveRecord::Base
	has_many :categories
	belongs_to :category
	has_many :connections
	has_many :collections, through: :connections

end
