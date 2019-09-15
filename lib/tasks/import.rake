namespace :import do
  desc  "rake import data from olympic data 2016 csv files"
  task generic: :environment do
    require 'csv'
    CSV.foreach('./data/olympic_data_2016.csv', :headers => true) do |row|
      Olympian.create(row.to_h)
    end
  end
end
