class Collection < ActiveRecord::Base
	has_many :products, dependent: :destroy
	has_many :connections
	has_many :categories, through: :connections

	 paginates_per 3
end