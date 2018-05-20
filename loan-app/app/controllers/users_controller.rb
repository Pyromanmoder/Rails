class UsersController < ApplicationController
  def index
  	@user_hash = User.paginate(per_page: 5, page: params[:page])
  	@admin_user = params[:name] 

  end

  def show
  	@name = User.find(params[:id])
  end
  def new
  	@user = User.new
  end

  def create
  	  @user = User.create(name: params[:user][:name], lastname: params[:user][:lastname])
  	  redirect_to user_path(@user)
  end
end
