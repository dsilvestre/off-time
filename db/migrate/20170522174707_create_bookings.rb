class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :seller_id
      t.integer :buyer_id
      t.references :equipment, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
    add_index :bookings, :seller_id
    add_index :bookings, :buyer_id
  end
end
