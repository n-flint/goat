require 'rails_helper'

RSpec.describe Olympian, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :sex}
    it {should validate_presence_of :age}
    it {should validate_presence_of :height}
    it {should validate_presence_of :weight}
    it {should validate_presence_of :team}
    it {should validate_presence_of :sport}
  end

  describe 'relationships' do
    it { should have_many(:events).through(:olympian_events)}
  end

  describe 'class methods' do
    before :each do
      @olympian_1 = Olympian.create(
      name: 'olympian_1',
      sex: 'M',
      age: 100,
      height: 150,
      weight: 150,
      team: 'Team 1',
      sport: 'Boxing'
      ),
    @olympian_2 = Olympian.create(
      name: 'olympian_2',
      sex: 'M',
      age: 200,
      height: 150,
      weight: 50,
      team: 'Team 2',
      sport: 'Swimming'
    ),
    @olympian_3 = Olympian.create(
      name: 'olympian_3',
      sex: 'F',
      age: 100,
      height: 150,
      weight: 300,
      team: 'Team 3',
      sport: 'Fencing'
    ),
    @olympian_4 = Olympian.create(
      name: 'olympian_4',
      sex: 'F',
      age: 200,
      height: 150,
      weight: 100,
      team: 'Team 4',
      sport: 'Weightlifting'
    )
    end

    # it '.age_sort' do
    #   will come back to this
    #   expect(Olympian.age_sort('youngest')).to eq(@olympian_1)
    #   expect(Olympian.age_sort('oldest')).to eq(@olympian_1)
    # end

    it '.total_olympians' do
      expect(Olympian.total_olympians).to eq(4)
    end

    # it '.avg_male_weight' do
    #   expect(Olympian.avg_male_weight).to eq(100)
    # end

    # it '.avg_female_weight' do
    #   expect(Olympian.avg_female_weight).to eq(200)
    # end
    # it '.avg_age' do
    #   expect(Olympian.avg_age).to eq(150)
    # end
  end
end