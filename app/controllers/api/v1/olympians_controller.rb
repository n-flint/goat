class Api::V1::OlympiansController < ApplicationController

  def index
    if params['age']
      render json: Olympian.age_sort(params['age'])
    else
    render json: Olympian.all
    end
  end
end