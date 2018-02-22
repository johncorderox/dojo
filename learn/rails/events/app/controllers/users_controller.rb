class UsersController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create
    @user_register = User.new(new_user)
    if @user_register.save
      session[:user_id] = @user_register.id
      redirect_to "/events"
    else
      flash[:errors] = @user_register.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
  end

  def update
    @update_user = User.find(params[:id])
    if @update_user.update(update_user)
      redirect_to  "/events"
    else
      flash[:errors] = @update_user.errors.full_messages
      redirect_to :back
    end
  end

  def edit
    @user_edit_show = User.find(params[:id])
  end

  private
    def new_user
      params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password)
    end
    private
    def update_user
      params.require(:new_user).permit(:first_name, :last_name, :city, :state)
    end
end
