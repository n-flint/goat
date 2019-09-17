class Event < ApplicationRecord
  validates_presence_of :Name
  validates_presence_of :Games
end