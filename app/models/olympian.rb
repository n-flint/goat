class Olympian < ApplicationRecord
  validates_presence_of :Name
  validates_presence_of :Sex
  validates_presence_of :Age
  validates_presence_of :Height
  validates_presence_of :Weight
  validates_presence_of :Team

  def self.age_sort(params)
    if params == 'youngest'
      Olympian.order(:Age).first
    elsif params == 'oldest'
      Olympian.order(:Age).last
    else
    end
  end

  def self.total_olympians
    all.count
  end

  def self.avg_male_weight
    where(Sex: 'M').average(:Weight)
  end

  def self.avg_female_weight
    where(Sex: 'F').average(:Weight)
  end

  def self.avg_age
    average(:Age)
  end
end