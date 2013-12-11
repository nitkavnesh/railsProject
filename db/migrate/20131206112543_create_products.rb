class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :feature
      t.integer :availability
      t.string :image
	    t.belongs_to :brand
      t.timestamps
    end
  end
end
