class AddHouseToChores < ActiveRecord::Migration
  def change
    add_column :chores, :house, :string
  end
end
