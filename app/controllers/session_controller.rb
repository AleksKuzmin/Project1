class SessionController < ApplicationController

  def home
  end
 
  def create
    user=User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] =user.id
      if user.admin?
        redirect_to users_path
      else
        redirect_to user
      end
    else
      redirect_to login_path
    end
  end
    def destroy
      session[:user_id]=nil
      redirect_to login_path
    end


end
