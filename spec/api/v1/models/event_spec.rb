require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :games}
  end

  describe 'relationships' do
    it { should have_many(:olympians).through(:olympian_events)}
  end
end