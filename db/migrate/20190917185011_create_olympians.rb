class CreateOlympians < ActiveRecord::Migration[5.2]
  def change
    create_table :olympians do |t|
      t.string :Name
      t.string :Age
      t.string :Sex
      t.string :Height
      t.string :Weight
      t.string :Team
      t.string :Sport

      t.timestamps
      
    end
  end
end
