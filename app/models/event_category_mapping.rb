class EventCategoryMapping < ActiveRecord::Base
  belongs_to :category
  belongs_to :sub_category
  belongs_to :event_master
end
