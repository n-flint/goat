class Olympian < ApplicationRecord
  validates_presence_of :Name
  validates_presence_of :Sex
  validates_presence_of :Age
  validates_presence_of :Height
  validates_presence_of :Weight
  validates_presence_of :Team
  validates_presence_of :Games
  validates_presence_of :Sport
  validates_presence_of :Event
  validates_presence_of :Medal

  def self.age_sort(params)
    if params == 'youngest'
      Olympian.order(:Age).first
    elsif params == 'oldest'
      Olympian.order(:Age).last
    else
    end
  end
end