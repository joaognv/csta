class AddPhotoToSpots < ActiveRecord::Migration[5.1]
  def change
    add_column :spots, :photo, :string
  end
end
