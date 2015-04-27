class ChangeDataTypeForDescriptionInEventTicketType < ActiveRecord::Migration
  def change
  	change_column(:event_ticket_types, :description, :text)
  end
end
