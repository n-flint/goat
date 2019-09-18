class Event < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :games

  has_many :olympian_events
  has_many :olympians, through: :olympian_events
end