require 'rails_helper'

RSpec.describe 'Olympians API Event Medalists' do
  it 'returns all the medalists for a single event' do
    olympian_1 = Olympian.create(
      name: 'olympian_1',
      sex: 'M',
      age: 100,
      height: 150,
      weight: 50,
      team: 'Team 1',
      sport: 'Boxing'
    )

    olympian_2 = Olympian.create(
      name: 'olympian_2',
      sex: 'F',
      age: 10,
      height: 150,
      weight: 50,
      team: 'Team 2',
      sport: 'Swimming'
    )

    event_1 = Event.create(
      name: 'event_1',
      games: '2016 Summer'
    )

    olympian_event_1 = OlympianEvent.create(
      medals: 'Gold',
      olympian_id: olympian_1.id,
      event_id: event_1.id
    )

    olympian_event_2 = OlympianEvent.create(
      medals: 'Silver',
      olympian_id: olympian_2.id,
      event_id: event_1.id
    )

    get "/api/v1/events/#{event_1.id}/medalists"

    require 'pry'; binding.pry
  end
end