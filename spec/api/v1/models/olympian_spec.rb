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
end