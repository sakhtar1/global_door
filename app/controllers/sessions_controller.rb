class SessionsController < ApplicationController
  

  def new
    @user = User.new
  end

  def create
    if user = User.find_by(name:params[:user][:name])
      @user = user.try(:authenticate, params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path
    else
      redirect_to '/login'
    end
  end
  
  def destroy
    session.delete :user_id
    redirect_to '/login'
  end

end
