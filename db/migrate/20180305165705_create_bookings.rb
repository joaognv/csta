class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :spot, foreign_key: true
      t.datetime :time_arrive
      t.datetime :time_leave
      t.string :status

      t.timestamps
    end
  end
end
