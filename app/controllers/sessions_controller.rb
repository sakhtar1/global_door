class SessionsController < ApplicationController
  skip_before_action :user_authenticated, only: [:new,:create]

  def new
    @user = User.new
  end

  def create
    if @user = User.find_by(name:params[:user][:name])
      session[:user_id] = @user.id
      redirect_to 'users/:id'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end

end
