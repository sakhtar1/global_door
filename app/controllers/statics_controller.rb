class StaticsController < ApplicationController
  skip_before_action :user_authenticated, only: [:home]

  def home
  end

  
  
end
