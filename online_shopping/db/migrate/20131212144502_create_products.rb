class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image, limit: 256

      t.belongs_to :category
     
     # t.has_many :bill_details
      t.timestamps
    end
    add_index :products, :name, unique: true
  end
end
