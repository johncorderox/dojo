class UsersController < ApplicationController
  def index
  end

  def show
    @user_show = User.find(params[:id])
  end
end
