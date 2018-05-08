
class UsersController < ApplicationController
  skip_before_action :user_authenticated, only: [:new,:create]

  def new
    @user = User.new
  end

  def create
    
    if @user = User.create(user_params)
       @user.save
      session[:user_id] = @user.id
      
      redirect_to @user

    else
      redirect_to new_user_path 
    end
  end

  def show
    @user = User.find_by(id:params[:id])
  end

  private
    def user_params
      params.require(:user).permit(
        :name,
        :email,
        :password,
        :continent,
        :country
        )
    end

end
