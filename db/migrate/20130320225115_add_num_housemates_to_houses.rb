class AddNumHousematesToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :num_housemates, :integer
  end
end
