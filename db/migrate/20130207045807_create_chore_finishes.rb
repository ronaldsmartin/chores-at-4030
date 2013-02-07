class CreateChoreFinishes < ActiveRecord::Migration
  def change
    create_table :chore_finishes do |t|
      t.string :chore
      t.string :finishername
      t.date :date
      t.text :comments

      t.timestamps
    end
  end
end
