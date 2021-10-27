class BookingsController < ApplicationController
  before_action :check_for_login, :except => [:new]

  def index
    @bookings=Booking.all
  end
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

  def edit

  @booking = Booking.find params[:id]
  end

  def update
    booking= Booking.find params[:id]
    booking.update booking_params
    redirect_to bookings_path
  end

  def destroy
    booking=Booking.find params[:id]
    booking.destroy
    redirect_to bookings_path
  end





  private
  def booking_params
    params.require(:booking).permit(:title,:user_id,:date,:description,:location,:contact, :image,:time,:date, :lesson_id)
  end








end
