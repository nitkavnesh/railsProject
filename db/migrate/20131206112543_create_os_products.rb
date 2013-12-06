class CreateOsProducts < ActiveRecord::Migration
  def change
    create_table :os_products do |t|
      t.string :pro_name
      t.decimal :pro_price
      t.text :pro_feature
      t.integer :pro_availability
      t.string :pro_image
	    t.belongs_to :os_brand
      t.timestamps
    end
  end
end
