class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :bill_name
      t.string :Institution
      t.float :price
      t.string :invoke
      t.string :active_record

      t.timestamps
    end
  end
end
