class HomeController < ApplicationController
  def index
    render json: 'Welcome to Pure Forest Blackjack!'
  end
end
