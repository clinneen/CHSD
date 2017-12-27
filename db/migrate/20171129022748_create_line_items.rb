class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.decimal :price, :precision=>64, :scale=>2

      t.timestamps
    end
  end
end
