require 'rails_helper'

RSpec.describe 'Olympians API' do
  it 'returns all olympians' do
    olympian_1 = Olympian.create(
      Name: 'olympian_1',
      Sex: 'M',
      Age: 105,
      Height: 150,
      Weight: 50,
      Team: 'Team 1',
      Games: 'Game 1',
      Sport: 'Sport 1',
      Event: 'Event 1',
      Medal: 'Medal 1'
    ),
    olympian_2 = Olympian.create(
      Name: 'olympian_2',
      Sex: 'M',
      Age: 105,
      Height: 150,
      Weight: 50,
      Team: 'Team 2',
      Games: 'Game 2',
      Sport: 'Sport 2',
      Event: 'Event 2',
      Medal: 'Medal 2'
    )

    get '/api/v1/olympians'

    olympians = JSON.parse(response.body)

    expect(status).to eq(200)
    # Olympian 1
    expect(olympians[0]['Name']).to eq('olympian_1')
    expect(olympians[0]['Sex']).to eq('M')
    expect(olympians[0]['Age']).to eq(105)
    expect(olympians[0]['Height']).to eq(150)
    expect(olympians[0]['Weight']).to eq(50)
    expect(olympians[0]['Team']).to eq('Team 1')
    expect(olympians[0]['Games']).to eq('Game 1')
    expect(olympians[0]['Sport']).to eq('Sport 1')
    expect(olympians[0]['Event']).to eq('Event 1')
    expect(olympians[0]['Medal']).to eq('Medal 1')
    # Olympian 2
    expect(olympians[1]['Name']).to eq('olympian_2')
    expect(olympians[1]['Sex']).to eq('M')
    expect(olympians[1]['Age']).to eq(105)
    expect(olympians[1]['Height']).to eq(150)
    expect(olympians[1]['Weight']).to eq(50)
    expect(olympians[1]['Team']).to eq('Team 2')
    expect(olympians[1]['Games']).to eq('Game 2')
    expect(olympians[1]['Sport']).to eq('Sport 2')
    expect(olympians[1]['Event']).to eq('Event 2')
    expect(olympians[1]['Medal']).to eq('Medal 2')
  end
end