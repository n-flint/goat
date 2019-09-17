class CreateOlympianEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :olympian_events do |t|
      t.string :Medals
      t.references :olympian, foreign_key: true
      t.references :event, foreign_key: true
    end
  end
end
