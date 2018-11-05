class PagesController < ApplicationController
  # SEEDED DATA TO BE REPLACED WITH THOSE FROM DATABASE
  SPORT_TABLE = ['Tenis', 'Cricket', 'Rugby', 'Soccer', 'Basketball', 'Gym']

  def home
    # This data is to be replaced with data from the Sports Table
    @categories = SPORT_TABLE
  end

  def index    
  end

  def show
  end
end


