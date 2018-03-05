class SecretsController < ApplicationController
  def index
    @all_secrets = Secret.all
  end
  def like
    @new_like = Like.create(user: User.find(session[:user_id]), secret: Secret.find(params[:secret_id]))
    if @new_like.save
      redirect_to '/secrets'
    else
    end
  end
  def create
    @new_secret = Secret.create(content: params[:content], user: User.find(session[:user_id]))
    if @new_secret.save
      redirect_to :back
    else
    end
  end
  def destroy
    @delete_my_secret = Secret.find(params[:id]).delete
    redirect_to '/secrets'
  end
end
