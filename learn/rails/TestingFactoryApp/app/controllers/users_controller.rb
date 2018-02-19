class UsersController < ApplicationController
  def new
  end
  def create
  @user = User.new(params.require(:user).permit(:first_name, :last_name, :email))
  if @user.save
    flash[:notice] = ['Welcome, shane']
    redirect_to 'new_user_path'
  else
    #errors we need to code later
  end
end
end
