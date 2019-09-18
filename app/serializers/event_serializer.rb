class EventSerializer
    def initialize(sports)
        @sports = sports
    end

    def serialize
        @sports.map { |sport| { sport: sport, events: Event.find_sport(sport) } }
    end
end