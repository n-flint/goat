class RemoveColumnsFromOlympians < ActiveRecord::Migration[5.2]
  def change
    remove_column :olympians, :Games, :string
    remove_column :olympians, :Sport, :string
    remove_column :olympians, :Event, :string
    remove_column :olympians, :Medal, :string
  end
end
