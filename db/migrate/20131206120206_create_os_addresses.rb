class CreateOsAddresses < ActiveRecord::Migration
  def change
    create_table :os_addresses do |t|
      t.text :add_address
      t.integer :add_pincode
      t.text :add_landmark
      t.string :add_city
      t.string :add_state
      t.string :os_country
	    t.belongs_to :os_customer
      t.timestamps
    end
  end
end
