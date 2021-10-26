class LessonsController < ApplicationController
  before_action :check_for_login, :except => [:new]
  def index
    @lessons=Lesson.all
  end
  # def home
  #     @lessons = @current_user.lessons
  # end
  def show

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
    params.require(:lesson).permit(:title,:user_id,:booking_id,:date,:description,:location,:contact, :image)
  end
end
