require 'rails_helper'

RSpec.describe 'Olympians API' do
  it 'returns statistics about all the olympians' do
    olympian_1 = Olympian.create(
      name: 'olympian_1',
      sex: 'M',
      age: 100,
      height: 150,
      weight: 50,
      team: 'Team 1',
      sport: 'Boxing'
    ),
    olympian_2 = Olympian.create(
      name: 'olympian_2',
      sex: 'F',
      age: 10,
      height: 150,
      weight: 50,
      team: 'Team 2',
      sport: 'Swimming'
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