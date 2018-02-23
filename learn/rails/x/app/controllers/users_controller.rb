class UsersController < ApplicationController
  def index
  end
  def show
    @user_show = User.find(session[:user_id])
    @user_count_posts = User.find(session[:user_id]).ideas.count
    @user_count_likes = User.find(session[:user_id]).likes.count

  end
  def new
  end

  def update
  end

  def create
    @user_register = User.new(new_user)
    if @user_register.save
      session[:user_id] = @user_register.id
      redirect_to "/bright_ideas"
    else
      flash[:errors] = @user_register.errors.full_messages
      redirect_to :back
    end
  end
  private
    def new_user
      params.require(:user).permit(:name, :alias, :email, :password)
    end
  def destroy
  end
end
