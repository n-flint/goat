class ChangeOlympiansColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :olympians, :name, :Name
    rename_column :olympians, :sex, :Sex
    rename_column :olympians, :age, :Age
    rename_column :olympians, :height, :Height
    rename_column :olympians, :weight, :Weight
    rename_column :olympians, :team, :Team
    rename_column :olympians, :games, :Games
    rename_column :olympians, :sport, :Sport
    rename_column :olympians, :event, :Event
    rename_column :olympians, :medal, :Medal
  end
end
