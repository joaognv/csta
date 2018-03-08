class AddPriceToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :price, :integer
  end
end
