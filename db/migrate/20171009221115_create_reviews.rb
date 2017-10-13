class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :review
      t.integer :guest_id
      t.integer :reservation_id

      t.timestamps
    end
  end
end
