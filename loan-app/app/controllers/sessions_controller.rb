class SessionsController < ApplicationController
  def new

  end
  def create
  	if user && user.authenticate(params[:user])
  		log_in
  	else
  		render 'new'
  	end
  end
end
