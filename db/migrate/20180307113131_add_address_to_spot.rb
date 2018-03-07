class AddAddressToSpot < ActiveRecord::Migration[5.1]
  def change
    add_column :spots, :address, :string
  end
end
