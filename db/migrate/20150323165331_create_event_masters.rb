class CreateEventMasters < ActiveRecord::Migration
  def change
    create_table :event_masters do |t|
      t.string :title
      t.string :url
      t.string :description
      t.integer :capacity
      t.boolean :private
      t.integer :category
      t.integer :sub_category
      t.integer :status
      t.date :start_date
      t.date :end_date
      t.integer :max

      t.timestamps
    end
  end
end
