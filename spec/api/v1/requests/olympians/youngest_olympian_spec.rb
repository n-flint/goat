require 'rails_helper'

RSpec.describe 'Olympians API' do
  it 'returns the youngest olympian' do
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

    get '/api/v1/olympians?age=youngest'

    youngest_olympian = JSON.parse(response.body)

    expect(youngest_olympian['Name']).to eq('olympian_2')
    expect(youngest_olympian['Sex']).to eq('M')
    expect(youngest_olympian['Age']).to eq(10)
    expect(youngest_olympian['Height']).to eq(150)
    expect(youngest_olympian['Weight']).to eq(50)
    expect(youngest_olympian['Team']).to eq('Team 2')
    expect(youngest_olympian['Games']).to eq('Game 2')
    expect(youngest_olympian['Sport']).to eq('Sport 2')
    expect(youngest_olympian['Event']).to eq('Event 2')
    expect(youngest_olympian['Medal']).to eq('Medal 2')
  end
end