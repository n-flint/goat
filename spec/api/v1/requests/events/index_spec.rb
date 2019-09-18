require 'rails_helper'

RSpec.describe 'Olympians API' do
  it 'returns all olympic events' do
    olympian_1 = Olympian.create(
      name: 'olympian_1',
      sex: 'M',
      age: 100,
      height: 150,
      weight: 50,
      team: 'Team 1',
      sport: 'Boxing'
    ),
    event_1 = Event.create(
      name: 'event_1',
      games: '2016ish' 
    ),
    event_2 = Event.create(
      name: 'event_2',
      games: '2016ish'
    )

    get '/api/v1/events'

    data = JSON.parse(response.body)

    expect(data['events'][0]['sport']).to eq('Boxing')
  end
end