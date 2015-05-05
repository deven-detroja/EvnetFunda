class AddColumnsToEventMasters < ActiveRecord::Migration
  def change
    add_column :event_masters, :admin_contact_no, :string
    add_column :event_masters, :admin_contact_email, :string
    add_column :event_masters, :map_location, :string
    add_column :event_masters, :is_terms_and_condition, :boolean
    add_column :event_masters, :terms_and_condition, :text
    add_column :event_masters, :is_virtual, :boolean
    add_column :event_masters, :display_order, :integer
  end
end