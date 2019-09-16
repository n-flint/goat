require 'rails_helper'

RSpec.describe 'Olympians API' do
  it 'returns statistics about all the olympians' do
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
      Sex: 'F',
      Age: 10,
      Height: 150,
      Weight: 50,
      Team: 'Team 2',
      Games: 'Game 2',
      Sport: 'Sport 2',
      Event: 'Event 2',
      Medal: 'Medal 2'
    )

    get '/api/v1/olympian_stats'

    stats = JSON.parse(response.body)

    expect(stats['olympian_stats']['total_competing_olympians']).to eq(2)
    expect(stats['olympian_stats']['average_weight']['unit']).to eq('kg')
    expect(stats['olympian_stats']['average_weight']['male_olympians']).to eq('50.0')
    expect(stats['olympian_stats']['average_weight']['female_olympians']).to eq('50.0')
    expect(stats['olympian_stats']['average_age']).to eq('55.0')
  end
end