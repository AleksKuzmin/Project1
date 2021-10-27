class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.text :suburb
      t.integer :postcode
      t.timestamps
    end
  end
end
