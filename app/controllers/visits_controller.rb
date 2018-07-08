
class VisitsController < ApplicationController
	skip_before_action :user_authenticated, only: [:show]
  def show
    @visit = Visit.find(params[:id])
  end

end