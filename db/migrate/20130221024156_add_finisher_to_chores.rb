class AddFinisherToChores < ActiveRecord::Migration
  def change
    add_column :chores, :finished_by, :string
  end
end
