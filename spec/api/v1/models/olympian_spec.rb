require 'rails_helper'

RSpec.describe Olympian, type: :model do
  describe 'validations' do
    it {should validate_presence_of :Name}
    it {should validate_presence_of :Sex}
    it {should validate_presence_of :Age}
    it {should validate_presence_of :Height}
    it {should validate_presence_of :Weight}
    it {should validate_presence_of :Team}
    it {should validate_presence_of :Sport}
  end

  describe 'class methods' do
    before :each do
      @olympian_1 = Olympian.create(
      Name: 'olympian_1',
      Sex: 'M',
      Age: 100,
      Height: 150,
      Weight: 150,
      Team: 'Team 1',
      Sport: 'Boxing'
      )
    @olympian_2 = Olympian.create(
      Name: 'olympian_2',
      Sex: 'M',
      Age: 200,
      Height: 150,
      Weight: 50,
      Team: 'Team 2',
      Sport: 'Swimming'
    )
    @olympian_3 = Olympian.create(
      Name: 'olympian_3',
      Sex: 'F',
      Age: 100,
      Height: 150,
      Weight: 300,
      Team: 'Team 3',
      Sport: 'Fencing'
    ),
    @olympian_4 = Olympian.create(
      Name: 'olympian_4',
      Sex: 'F',
      Age: 200,
      Height: 150,
      Weight: 100,
      Team: 'Team 4',
      Sport: 'Weightlifting'
    )
    end

    it '.age_sort' do
      # will come back to this
      # expect(Olympian.age_sort('youngest')).to eq(@olympian_1)
      # expect(Olympian.age_sort('oldest')).to eq(@olympian_1)
    end

    it '.total_olympians' do
      expect(Olympian.total_olympians).to eq(4)
    end

    it '.avg_male_weight' do
      expect(Olympian.avg_male_weight).to eq(100)
    end

    it '.avg_female_weight' do
      expect(Olympian.avg_female_weight).to eq(200)
    end

    it '.avg_age' do
      expect(Olympian.avg_age).to eq(150)
    end
  end
end