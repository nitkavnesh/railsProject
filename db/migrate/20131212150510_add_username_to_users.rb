class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :phone_no, :string, limit: 12
  end
end
