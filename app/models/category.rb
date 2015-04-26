class Category < ActiveRecord::Base
  has_many :sub_categories
  has_many :event_category_mappings
  has_many :event_masters
end
