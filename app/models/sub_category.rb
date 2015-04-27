class SubCategory < ActiveRecord::Base
  belongs_to :category
  has_many :event_masters
  has_many :event_category_mappings, through: :event_masters
end
