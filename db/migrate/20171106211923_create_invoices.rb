class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.text :description
      t.date :date
      t.decimal :total, :precision=>64, :scale=>2

      t.timestamps
    end
  end
end
