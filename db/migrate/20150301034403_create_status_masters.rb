class CreateStatusMasters < ActiveRecord::Migration
  def change
    create_table :status_masters do |t|
      t.string :name
      t.integer :description
      t.boolean :active

      t.timestamps
    end
  end
end
