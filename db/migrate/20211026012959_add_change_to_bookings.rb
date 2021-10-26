class AddChangeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date, :date
    add_column :bookings, :time, :time
    add_column :bookings, :description, :text
    add_column :bookings, :image, :text
    add_column :bookings, :location, :text
    add_column :bookings, :contact, :text
  end
end
