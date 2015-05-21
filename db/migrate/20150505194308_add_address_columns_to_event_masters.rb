class AddAddressColumnsToEventMasters < ActiveRecord::Migration
  def change
    add_column :event_masters, :address_one, :string
    add_column :event_masters, :address_two, :string
    add_column :event_masters, :city, :string
    add_column :event_masters, :state, :string
    add_column :event_masters, :country, :string
    add_column :event_masters, :postal_code, :string
  end
end