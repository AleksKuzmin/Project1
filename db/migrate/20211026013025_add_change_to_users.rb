class AddChangeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :text
    add_column :users, :address, :text
    add_column :users, :phonenumber, :integer
    add_column :users, :image, :text
    add_column :users, :description, :text
    add_column :users, :location, :text
    add_column :users, :about, :text
    add_column :users, :dob, :date
  end
end
