class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :chore
      t.string :assignedto
      t.boolean :chorefinished
      t.date :dateadded
      t.date :datefinished

      t.timestamps
    end
  end
end
