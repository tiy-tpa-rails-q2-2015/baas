class HomeController < ApplicationController
  def index
    render json: 'Blackjack as a Service!'
  end
end
