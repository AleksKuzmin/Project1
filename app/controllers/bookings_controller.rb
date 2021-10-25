class BookingsController < ApplicationController
  before_action :check_for_login, :except => [:new]

  def home
      @bookings = @current_user.bookings
  end


  def new
    @booking = Booking.new
  end



  def create
    booking = Booking.create booking_params
    @current_user.bookings << booking
    redirect_to bookings_path

  end
  private
  def booking_params
    params.require(:booking).permit(:title)
  end








end
