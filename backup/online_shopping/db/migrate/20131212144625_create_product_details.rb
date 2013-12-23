class CreateProductDetails < ActiveRecord::Migration
  def change
    create_table :product_details do |t|
      t.integer :unique_id
      t.boolean :available, :default => 1
      t.belongs_to :product
<<<<<<< HEAD
=======
      
>>>>>>> 0b6b3cc625c4c57e893374b7047aa6a147a089f4
      t.timestamps
    end
  end
end
