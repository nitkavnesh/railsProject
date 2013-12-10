class AddNameToOsCustomers < ActiveRecord::Migration
  def change
    add_column :os_customers, :cust_name, :string
    add_column :os_customers, :cust_phone_no, :integer
    add_column :os_customers, :cust_type, :string
  end
end
