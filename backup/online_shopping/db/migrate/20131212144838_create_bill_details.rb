class CreateBillDetails < ActiveRecord::Migration
  def change
    create_table :bill_details do |t|
      t.decimal :price

      t.belongs_to :bill
      t.belongs_to :product
      t.belongs_to :product_detail

      t.timestamps
    end
  end
end
