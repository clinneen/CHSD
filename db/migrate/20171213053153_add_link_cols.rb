class AddLinkCols < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :user_id, :integer
    add_column :invoices, :customer_id, :integer
    add_column :line_items, :invoice_id, :integer
    add_column :line_items, :product_id, :integer

    remove_column :invoices, :invoice_id
  end
end
