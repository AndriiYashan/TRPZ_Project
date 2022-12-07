class CreatePayers < ActiveRecord::Migration[7.0]
  def change
    create_table :payers do |t|
      t.string :name
      t.string :bill_name
      t.string :account
      t.float :sum
      t.string :invoke
      t.string :active_record

      t.timestamps
    end
  end
end
