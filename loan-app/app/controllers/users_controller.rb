class UsersController < ApplicationController
  def index
  	@user_hash = User.order(params[:sort]).paginate(per_page: 5, page: params[:page])
    if params[:sort].nil?
      @sort = "created_at"
    else
      @sort = params[:sort]
    end
  	@admin_user = params[:name]

  end

  def show
  	@name = User.find(params[:id])
  end
  def new
  	@user = User.new
  end

  def create
  	  @user = User.create(name: params[:user][:name], lastname: params[:user][:lastname], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
      if @user.errors.empty?
        redirect_to "index"
      else
        render "new"
      end
  	  
  end
end
