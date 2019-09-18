require 'rails_helper'

RSpec.describe 'Olympians API' do
  it 'returns the youngest olympian' do
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
      sex: 'M',
      age: 10,
      height: 150,
      weight: 50,
      team: 'Team 2',
      sport: 'Swimming'
    )

    get '/api/v1/olympians?age=youngest'

    youngest_olympian = JSON.parse(response.body)

    expect(youngest_olympian['name']).to eq('olympian_2')
    expect(youngest_olympian['sex']).to eq('M')
    expect(youngest_olympian['age']).to eq(10)
    expect(youngest_olympian['height']).to eq(150)
    expect(youngest_olympian['weight']).to eq(50)
    expect(youngest_olympian['team']).to eq('Team 2')
    expect(youngest_olympian['sport']).to eq('Swimming')
  end
end