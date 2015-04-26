class CreateEventTicketTypes < ActiveRecord::Migration
  def change
    create_table :event_ticket_types do |t|
      t.string :name
      t.integer :description
      t.integer :price
      t.integer :min
      t.integer :max

      t.timestamps
    end
  end
end
