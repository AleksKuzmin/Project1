class AddChangeToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :date, :date
    add_column :lessons, :time, :time
    add_column :lessons, :description, :text
    add_column :lessons, :location, :text
    add_column :lessons, :contact, :text
    add_column :lessons, :image, :text
  end
end
