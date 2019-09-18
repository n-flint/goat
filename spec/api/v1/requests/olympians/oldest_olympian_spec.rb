require 'rails_helper'

RSpec.describe 'Olympians API' do
  it 'returns the oldest olympian' do
    olympian_1 = Olympian.create(
      name: 'olympian_1',
      sex: 'M',
      age: 100,
      height: 150,
      weight: 50,
      team: 'Team 1',
      sport: 'Sport 1'
    ),
    olympian_2 = Olympian.create(
      name: 'olympian_2',
      sex: 'M',
      age: 10,
      height: 150,
      weight: 50,
      team: 'Team 2',
      sport: 'Sport 2'
    )

    get '/api/v1/olympians?age=oldest'

    oldest_olympian = JSON.parse(response.body)

    expect(oldest_olympian['name']).to eq('olympian_1')
    expect(oldest_olympian['sex']).to eq('M')
    expect(oldest_olympian['age']).to eq(100)
    expect(oldest_olympian['height']).to eq(150)
    expect(oldest_olympian['weight']).to eq(50)
    expect(oldest_olympian['team']).to eq('Team 1')
  end
end