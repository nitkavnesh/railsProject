class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :address
      t.integer :pincode
      t.text :landmark
      t.string :city
      t.string :state
      t.string :country
	    t.belongs_to :user
      t.timestamps
    end
  end
end
