class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :date
      t.integer :guest_id
      t.integer :parking_spot_id
      t.string :status
      t.timestamps
    end
  end
end
