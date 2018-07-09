class StaticsController < ApplicationController
  before_action :user_authenticated, only: [:home]

  def home
  end

  
  
end
