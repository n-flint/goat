namespace :import do
  desc  "rake import data from olympic data 2016 csv files"
  task generic: :environment do
    require 'csv'
    CSV.foreach('./data/olympic_data_2016.csv', :headers => true) do |row|
      olympian = Olympian.find_or_create_by(
        name: row['Name'],
        age: row['Age'],
        sex: row['Sex'],
        height: row['Height'],
        weight: row['Weight'],
        team: row['Team'],
        sport: row['Sport']
      )

      event = Event.find_or_create_by(
        name: row['Event'],
        games: row["Games"]
      )

      event.olympian_events.find_or_create_by(
        medals: row['Medal'],
        olympian_id: olympian.id
      )
    end
  end
end

