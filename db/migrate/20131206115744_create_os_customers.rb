class CreateOsCustomers < ActiveRecord::Migration
  def change
    create_table :os_customers do |t|
      t.string :cust_name
      t.string :cus_email
      t.integer :cus_phone_no
      t.string :cus_password

      t.timestamps
    end
  end
end
