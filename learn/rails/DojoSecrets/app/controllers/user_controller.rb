class UserController < ApplicationController
  def new
  end
  def show
    @user_show = User.find(params[:id]).secrets.select("*")
    @user_likes = Like.joins(:user).joins(:secret).select("*").where(user: User.find(params[:id]))
  end

  def create
    @u = User.new(new_user)
    if @u.save
      session[:user_id] = @u.id
      redirect_to "/user/#{@u.id}"
    else
      flash[:errors] = @u.errors.full_messages
      redirect_to :back
    end
  end
private
  def new_user
    params.require(:user).permit(:name, :email, :password)
  end
end
