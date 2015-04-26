class CreateEventCategoryMappings < ActiveRecord::Migration
  def change
    create_table :event_category_mappings do |t|
      t.references :categories, index: true
      t.references :sub_categories, index: true
      t.references :event_master, index: true

      t.timestamps
    end
  end
end
