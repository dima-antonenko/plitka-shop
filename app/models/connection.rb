class Connection < ActiveRecord::Base
  belongs_to :category
  belongs_to :collection
end
