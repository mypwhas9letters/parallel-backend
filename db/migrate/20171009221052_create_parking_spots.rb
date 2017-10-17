class CreateParkingSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_spots do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :description
      t.integer :owner_id
      t.string :photo
      t.float :price

      t.timestamps
    end
  end
end
