class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.belongs_to :category
      t.timestamps
    end
  end
end
