class Removecolsinvoices < ActiveRecord::Migration[5.1]
  def change
    remove_column :invoices, :customer_name
    remove_column :invoices, :customer_address
  end
end
