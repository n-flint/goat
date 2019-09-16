require 'rails_helper'

RSpec.describe Olympian, type: :model do
  describe 'validations' do
    it {should validate_presence_of :Name}
    it {should validate_presence_of :Sex}
    it {should validate_presence_of :Age}
    it {should validate_presence_of :Height}
    it {should validate_presence_of :Weight}
    it {should validate_presence_of :Team}
    it {should validate_presence_of :Games}
    it {should validate_presence_of :Sport}
    it {should validate_presence_of :Event}
    it {should validate_presence_of :Medal}
  end

  describe 'class methods' do
    before :each do
      @olympian_1 = Olympian.create(
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
    @olympian_2 = Olympian.create(
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
    end

    it '.age_sort' do
    expect(Olympian.age_sort('youngest')).to eq(@olympian_2)
    # will come back to this
    # expect(Olympian.age_sort('oldest')).to eq(@olympian_1)
    end

    it '.total_olympians' do
    expect(Olympian.total_olympians).to eq(2)
    end
  end
end