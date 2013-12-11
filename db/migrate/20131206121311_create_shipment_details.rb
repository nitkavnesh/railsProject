class CreateShipmentDetails < ActiveRecord::Migration
  def change
    create_table :shipment_details do |t|
      t.string :name
      t.text :address
      t.integer :pincode
      t.text :landmark
      t.string :city
      t.string :state
      t.integer :phone
      t.string :country

      t.timestamps
    end
  end
end
