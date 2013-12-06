class CreateOsCategories < ActiveRecord::Migration
  def change
    create_table :os_categories do |t|
      t.string :cat_name
      t.timestamps
    end
  end
end
