class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.text :title
      t.integer :user_id
      t.integer :booking_id

      t.timestamps
    end
  end
end
