class Api::V1::StatsController < ApplicationController

  def index
    total_olympians = Olympian.total_olympians
    avg_male_weight = Olympian.avg_male_weight
    avg_female_weight = Olympian.avg_female_weight
    avg_age = Olympian.avg_age

    render json: StatsSerializer.new(total_olympians, avg_male_weight, avg_female_weight, avg_age).serialize
  end

end