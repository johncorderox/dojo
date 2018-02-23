class LikesController < ApplicationController
  def create
    @new_like = Like.create(user: User.find(session[:user_id]), idea: Idea.find(params[:idea_id]))
    redirect_to '/bright_ideas'
  end
end
