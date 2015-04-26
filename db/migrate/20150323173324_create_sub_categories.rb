class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
