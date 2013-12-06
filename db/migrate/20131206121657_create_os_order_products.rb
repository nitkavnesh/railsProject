class CreateOsOrderProducts < ActiveRecord::Migration
  def change
    create_table :os_order_products do |t|
      t.integer :op_quantity
			t.belongs_to :os_product
			t.belongs_to :os_order
      t.timestamps
    end
  end
end
