class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.integer :quantity
			t.belongs_to :product
			t.belongs_to :order
      t.timestamps
    end
  end
end
