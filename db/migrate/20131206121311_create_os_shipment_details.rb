class CreateOsShipmentDetails < ActiveRecord::Migration
  def change
    create_table :os_shipment_details do |t|
      t.string :shi_name
      t.text :shi_address
      t.integer :shi_pincode
      t.text :shi_landmark
      t.string :shi_city
      t.string :shi_state
      t.integer :shi_phone
      t.string :shi_country

      t.timestamps
    end
  end
end
