class UpdateColumns < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.change :winner, :boolean
    end
  end