class AddColunmToUser < ActiveRecord::Migration
  def change
    add_column :users, :fullname, :string
    add_column :users, :sex, :string
    add_column :users, :mobile, :string
    add_column :users, :dob, :date
    add_column :users, :userable_type, :string
    add_column :users, :userable_id, :integer
    add_column :users, :status, :integer
  end
end
