class LessonsController < ApplicationController
  before_action :check_for_login, :except => [:new]
  def index
    @lessons=Lesson.all
  end
  # def home
  #     @lessons = @current_user.lessons
  # end
  def show
  @lesson = Lesson.find params[:id]
  # Using open street map API
  @client = OpenStreetMap::Client.new
    #create an object
    @search = @client.search(q: "#{@lesson.suburb}, #{@lesson.postcode}",format: 'json', addressdetails: '1', accept_language: 'en')
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
    @lesson = Lesson.new
  end


  def create
    lesson = Lesson.create lesson_params
    @current_user.lessons << lesson
    redirect_to lessons_path

  end

  def edit
  @lesson = Lesson.find params[:id]
  end

  def update
    lesson= Lesson.find params[:id]
    lesson.update lesson_params
    redirect_to lessons_path
  end

  def destroy
    lesson=Lesson.find params[:id]
    lesson.destroy
    redirect_to lessons_path
  end

  private
  def lesson_params
    params.require(:lesson).permit(:title,:user_id,:booking_id,:date,:description,:location,:contact, :image, :suburb, :postcode)
  end
end
