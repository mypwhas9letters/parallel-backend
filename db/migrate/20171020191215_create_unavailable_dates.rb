class CreateUnavailableDates < ActiveRecord::Migration[5.1]
  def change
    create_table :unavailable_dates do |t|
      t.integer :parking_spot_id
      t.string :unavailable_dates

      t.timestamps
    end
  end
end
