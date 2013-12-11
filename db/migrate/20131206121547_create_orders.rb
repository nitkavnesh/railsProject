class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :date
      t.boolean :status
			t.belongs_to :user
			t.belongs_to :shipment_detail
      t.timestamps
    end
  end
end
