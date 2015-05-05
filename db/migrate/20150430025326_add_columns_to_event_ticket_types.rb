class AddColumnsToEventTicketTypes < ActiveRecord::Migration
  def change
    add_column :event_ticket_types, :quantity, :integer
    add_column :event_ticket_types, :start_time, :datetime
    add_column :event_ticket_types, :end_time, :datetime
    add_column :event_ticket_types, :display_order, :integer
  end
end