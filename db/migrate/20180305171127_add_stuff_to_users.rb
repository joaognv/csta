class AddStuffToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :about_me, :text
  end
end
