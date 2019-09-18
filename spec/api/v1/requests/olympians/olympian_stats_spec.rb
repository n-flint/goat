require 'rails_helper'

RSpec.describe 'Olympians API' do
  xit 'returns statistics about all the olympians' do
    olympian_1 = Olympian.create(
      Name: 'olympian_1',
      Sex: 'M',
      Age: 100,
      Height: 150,
      Weight: 50,
      Team: 'Team 1',
      Sport: 'Boxing'
    ),
    olympian_2 = Olympian.create(
      Name: 'olympian_2',
      Sex: 'F',
      Age: 10,
      Height: 150,
      Weight: 50,
      Team: 'Team 2',
      Sport: 'Swimming'
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