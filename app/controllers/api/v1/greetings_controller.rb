class Api::V1::GreetingsController < ApplicationController
  before_action :set_api_v1_greeting, only: %i[show update destroy]

  # GET /api/v1/greetings
  def index
    @greetings = Greeting.all
    @greeting = [@greetings.sample]

    render json: @greeting
  end
end
