class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.date :startDate
      t.date :endDate
      t.integer :guest_id
      t.integer :parking_spot_id

      t.timestamps
    end
  end
end
