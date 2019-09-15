class Olympian < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :sex
  validates_presence_of :age
  validates_presence_of :height
  validates_presence_of :weight
  validates_presence_of :team
  validates_presence_of :games
  validates_presence_of :sport
  validates_presence_of :event
  validates_presence_of :medal
end