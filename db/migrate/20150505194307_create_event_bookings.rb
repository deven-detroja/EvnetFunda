class CreateEventBookings < ActiveRecord::Migration
  def change
    create_table :event_bookings do |t|
      t.references :user, index: true
      t.references :event_master, index: true
      t.references :event_ticket_type, index: true
      t.integer :quantity
      t.float :gross_total
      t.string :payment_status
    
      t.timestamps
    end
  end
end
