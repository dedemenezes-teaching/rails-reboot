class BookingsController < ApplicationController
  def new
    @football_field = FootballField.find(params[:football_field_id])
    @booking = Booking.new
  end

  def create
    @football_field = FootballField.find(params[:football_field_id])
    @booking = Booking.new(booking_params)
    # assign this booking to the correct football field
    @booking.football_field = @football_field

    # assign this booking to the correct user
    @booking.user = current_user

    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
