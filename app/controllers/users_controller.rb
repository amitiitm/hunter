class UsersController < ApplicationController
	def index
		render 'create'
	end

  def create
  	unless valid_params?
  		flash[:warning] = 'Please Enter all required parameters.'
  		redirect_to root_url and return
  	end
  	redirect_to 'http://www.google.com?source=hunter'
  end

  private
  def valid_params?
  	params[:first_name].present? &&
  	params[:last_name].present? &&
  	params[:password].present?
  end
end
