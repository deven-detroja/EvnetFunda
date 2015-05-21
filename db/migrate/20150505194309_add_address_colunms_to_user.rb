class AddAddressColunmsToUser < ActiveRecord::Migration
  def change
    add_column :users, :address_one, :string
    add_column :users, :address_two, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :postal_code, :string
  end
end
