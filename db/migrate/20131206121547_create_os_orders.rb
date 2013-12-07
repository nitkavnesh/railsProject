class CreateOsOrders < ActiveRecord::Migration
  def change
    create_table :os_orders do |t|
      t.date :ord_date
			t.belongs_to :os_customer
			t.belongs_to :os_shipment_detail
      t.timestamps
    end
  end
end
