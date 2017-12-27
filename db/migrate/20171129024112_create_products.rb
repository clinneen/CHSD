class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :code
      t.string :description
      t.string :image_url
      t.decimal :cost_vender_a, :precision=>64, :scale=>2
      t.decimal :cost_vender_b, :precision=>64, :scale=>2
      t.decimal :cost_vender_c, :precision=>64, :scale=>2
      t.decimal :price, :precision=>64, :scale=>2

      t.timestamps
    end
  end
end
