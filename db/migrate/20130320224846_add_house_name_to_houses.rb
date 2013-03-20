class AddHouseNameToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :house_name, :string
  end
end
