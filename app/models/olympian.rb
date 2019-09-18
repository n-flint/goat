class Olympian < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :sex
  validates_presence_of :age
  validates_presence_of :height
  validates_presence_of :weight
  validates_presence_of :team
  validates_presence_of :sport

  has_many :olympian_events
  has_many :events, through: :olympian_events

  def self.age_sort(params)
    if params == 'youngest'
      Olympian.order(:age).first
    elsif params == 'oldest'
      Olympian.order(:age).last
    else
    end
  end

  def self.total_olympians
    all.count
  end

  def self.avg_male_weight
    where(sex: 'M').average(:weight)
  end

  def self.avg_female_weight
    where(sex: 'F').average(:weight)
  end

  def self.avg_age
    average(:age)
  end

  def self.find_sports
    pluck(:sport).uniq
  end
end