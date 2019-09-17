class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :Name
      t.string :Games

      t.timestamps
    end
  end
end
