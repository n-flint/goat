require 'rails_helper'

RSpec.describe 'Olympians API' do
  it 'returns all olympians' do
    olympian_1 = Olympian.create(
      name: 'olympian_1',
      sex: 'M',
      age: 105,
      height: 150,
      weight: 50,
      team: 'Team 1',
      sport: 'Boxing'
    ),
    olympian_2 = Olympian.create(
      name: 'olympian_2',
      sex: 'M',
      age: 105,
      height: 150,
      weight: 50,
      team: 'Team 2',
      sport: 'Swimming'
    )

    get '/api/v1/olympians'

    olympians = JSON.parse(response.body)

    expect(status).to eq(200)
    # Olympian 1
    expect(olympians[0]['name']).to eq('olympian_1')
    expect(olympians[0]['sex']).to eq('M')
    expect(olympians[0]['age']).to eq('105')
    expect(olympians[0]['height']).to eq('150')
    expect(olympians[0]['weight']).to eq('50')
    expect(olympians[0]['team']).to eq('Team 1')
    expect(olympians[0]['sport']).to eq('Boxing')
    # Olympian 2
    expect(olympians[1]['name']).to eq('olympian_2')
    expect(olympians[1]['sex']).to eq('M')
    expect(olympians[1]['age']).to eq('105')
    expect(olympians[1]['height']).to eq('150')
    expect(olympians[1]['weight']).to eq('50')
    expect(olympians[1]['team']).to eq('Team 2')
    expect(olympians[1]['sport']).to eq('Swimming')
  end
end