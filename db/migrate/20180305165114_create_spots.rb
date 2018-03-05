class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.text :description
      t.string :city
      t.integer :capacity
      t.integer :price
      t.boolean :shower
      t.boolean :wifi
      t.boolean :pets
      t.boolean :coffee
      t.boolean :kitchen
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
