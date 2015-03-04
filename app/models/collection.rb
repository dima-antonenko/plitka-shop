class Collection < ActiveRecord::Base
	has_many :products, dependent: :destroy
	belongs_to :category


end
