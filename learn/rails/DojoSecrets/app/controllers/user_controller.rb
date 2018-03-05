class UserController < ApplicationController
  def new
  end
  def show
    @user_show = Secret.all.where(user: User.find(session[:user_id]))
    @user_likes = Like.joins(:user).joins(:secret).select("*").where(user: User.find(params[:id]))
    @show_secret_likes = Like.joins(:secret).where("secrets.id = 2")
  end
#get all secrets name and likes by YOU
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
#User.find(session[:user_id]).secrets.joins(:likes).group("secrets.id")
