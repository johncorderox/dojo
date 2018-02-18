class UserController < ApplicationController
  def index
    render json: @users = User.all
  end

  def new
  end
  def new_user
    @users_new = User.create(name: params[:name])
    redirect_to '/users'
  end
  def edit
    @users_edit = User.find(1)
  end
  def show
    render json: @users_show = User.find(params[:id])
  end
  def total
    @users_total = User.count('id')
  end
end
