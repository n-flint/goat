require 'rails_helper'

RSpec.describe 'Olympians API' do
  it 'returns the oldest olympian' do
    olympian_1 = Olympian.create(
      Name: 'olympian_1',
      Sex: 'M',
      Age: 100,
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
      Age: 10,
      Height: 150,
      Weight: 50,
      Team: 'Team 2',
      Games: 'Game 2',
      Sport: 'Sport 2',
      Event: 'Event 2',
      Medal: 'Medal 2'
    )

    get '/api/v1/olympians?age=oldest'

    oldest_olympian = JSON.parse(response.body)

    expect(oldest_olympian['Name']).to eq('olympian_1')
    expect(oldest_olympian['Sex']).to eq('M')
    expect(oldest_olympian['Age']).to eq(100)
    expect(oldest_olympian['Height']).to eq(150)
    expect(oldest_olympian['Weight']).to eq(50)
    expect(oldest_olympian['Team']).to eq('Team 1')
    expect(oldest_olympian['Games']).to eq('Game 1')
    expect(oldest_olympian['Sport']).to eq('Sport 1')
    expect(oldest_olympian['Event']).to eq('Event 1')
    expect(oldest_olympian['Medal']).to eq('Medal 1')
  end
end