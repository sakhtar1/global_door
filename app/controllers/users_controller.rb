
class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]

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
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

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
