class CreateBankDetails < ActiveRecord::Migration
  def change
    create_table :bank_details do |t|
      t.string :account_holder_name
      t.integer :account_number
      t.string :bank_name
      t.string :branch
      t.string :ifci_code
      t.string :account_type

      t.timestamps
    end
  end
end
