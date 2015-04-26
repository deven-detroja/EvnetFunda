class SubCategory < ActiveRecord::Base
  belongs_to :category
  has_many :event_category_mappings
  has_many :event_masters
end
