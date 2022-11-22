class FootballFieldsController < ApplicationController
  def index
    @football_fields = FootballField.all
  end

  def show
    @football_field = FootballField.find(params[:id])
    @booking = Booking.new
  end
end
