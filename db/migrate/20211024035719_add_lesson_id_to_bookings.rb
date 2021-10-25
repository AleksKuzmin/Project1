class AddLessonIdToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :lesson_id, :integer
  end
end
