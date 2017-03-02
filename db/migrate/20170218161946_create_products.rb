class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :stock
      t.string :image
      t.float :price

      t.timestamps
    end
  end
end
