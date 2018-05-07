class ContinentsController < ApplicationController
	skip_before_action :user_authenticated, only: [:index]
	def index
	end

end
