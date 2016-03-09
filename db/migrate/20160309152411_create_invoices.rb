class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :date
      t.float :total
      t.string :notes
      t.string :client

      t.timestamps null: false
    end
  end
end
