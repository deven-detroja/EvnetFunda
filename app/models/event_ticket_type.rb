class EventTicketType < ActiveRecord::Base
	belongs_to :event_master
	has_many :event_bookings
end
