require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'validations' do
    it {should validate_presence_of :Name}
    it {should validate_presence_of :Games}
  end
end