class AddPostcodeToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :location_id, :integer
    add_column :lessons, :suburb, :text
    add_column :lessons, :postcode, :integer

  end
end
