class Api::V1::EventsController < ApplicationController

  def index
    sports = Olympian.find_sports
    events = EventSerializer.new(sports)
    render status: 200, json: { events: events.serialize }
  end



end