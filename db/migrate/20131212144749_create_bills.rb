class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.datetime :date
      t.decimal :total_amount
      t.belongs_to :address
      t.belongs_to :user
     
      t.timestamps
    end
  end
end
