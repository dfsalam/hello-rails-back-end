class Api::V1::GreetingsController < ApplicationController
  before_action :set_api_v1_greeting, only: %i[ show update destroy ]

  # GET /api/v1/greetings
  def index
    @api_v1_greetings = Api::V1::Greeting.all

    render json: @api_v1_greetings
  end
end
