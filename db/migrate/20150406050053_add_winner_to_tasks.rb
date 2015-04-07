class AddWinnerToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :winner, :string
  end
end
