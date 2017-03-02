class CreateOrderTemps < ActiveRecord::Migration[5.0]
  def change
    create_table :order_temps do |t|
      t.integer :product_id
      t.float :price
      t.integer :qty

      t.timestamps
    end
  end
end
