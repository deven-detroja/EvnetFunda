class AddEventMasterToEventTicketType < ActiveRecord::Migration
  def change
    add_reference :event_ticket_types, :event_master, index: true
  end
end
