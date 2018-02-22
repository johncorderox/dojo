class SessionController < ApplicationController
  def new
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/events'
    else
      flash[:errors]=["Invalid Combination"]
      redirect_to :back
      end
  end

  def create

  end
  def destroy
    reset_session
    redirect_to '/'
  end
end
