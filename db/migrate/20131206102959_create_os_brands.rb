class CreateOsBrands < ActiveRecord::Migration
  def change
    create_table :os_brands do |t|
      t.string :br_name
      t.belongs_to :os_category
      t.timestamps
    end
  end
end
