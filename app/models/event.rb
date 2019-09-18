class Event < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :games

  has_many :olympian_events
  has_many :olympians, through: :olympian_events

  def self.find_sport(sport)
    where("events.name LIKE ?", "%#{sport}%").pluck(:name)
  end
end