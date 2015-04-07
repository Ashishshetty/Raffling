class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.timestamps null: false

      t.string   :description, null: true
      t.string   :name ,null: false
      t.string   :winner,null: true
      t.datetime :deadline,null: true
    end
  end
end
