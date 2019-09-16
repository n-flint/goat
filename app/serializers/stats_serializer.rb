class StatsSerializer

  def initialize(total_olympians, avg_male_weight, avg_female_weight, avg_age)
    @total_olympians = total_olympians
    @avg_male_weight = avg_male_weight
    @avg_female_weight = avg_female_weight
    @avg_age = avg_age
  end

  def serialize
    { olympian_stats: {
      total_competing_olympians: @total_olympians,
      average_weight: {
        unit: "kg",
        male_olympians: @avg_male_weight,
        female_olympians: @avg_female_weight
        },
        average_age: @avg_age
      }
    }
  end
end