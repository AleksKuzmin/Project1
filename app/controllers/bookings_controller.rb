class BookingsController < ApplicationController
  before_action :check_for_login, :except => [:new]

  def index
    @bookings=Booking.all
  end
  def home
      @bookings = @current_user.bookings
  end
  def show
    @booking = Booking.find params[:id]
    @client = OpenStreetMap::Client.new
      #create an object
      @search = @client.search(q: "#{@booking.lesson.suburb}, #{@booking.lesson.postcode}",format: 'json', addressdetails: '1', accept_language: 'en')
      #extract value from JSON response
      if @search.any?
        @bounding_box = @search[0]["boundingbox"]
        @south_latitude = @bounding_box[0]
        @north_latitude = @bounding_box[1]
        @west_longitude = @bounding_box[2]
        @east_longitude = @bounding_box[3]

      #arrange longitude and latitude in bounding box as, bbox = min Longitude , min Latitude , max Longitude , max Latitude
      @bbox = @west_longitude + '%2C' + @south_latitude + '%2C' + @east_longitude + '%2C' + @north_latitude
      #extract value longitude and latitude values for marker
      @longitude = @search[0]["lon"]
      @latitude = @search[0]["lat"]
      @marker = @longitude + '%2C' + @latitude
    end
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
