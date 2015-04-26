class AddUserRefToEventMaster < ActiveRecord::Migration
  def change
    add_reference :event_masters, :user, index: true
  end
end
