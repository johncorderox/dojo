class SessionsController < ApplicationController
  def new
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/bright_ideas'
    else
      flash[:errors]=["Invalid Combination"]
      redirect_to :back
      end
  end

  def destroy
    reset_session
    redirect_to '/main'
  end
end
