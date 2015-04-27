class Category < ActiveRecord::Base
  has_many :sub_categories
  has_many :event_masters
  has_many :event_category_mappings, through: :event_masters
end
