class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :chore

      t.timestamps
    end
  end
end
