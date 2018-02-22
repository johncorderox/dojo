class LikesController < ApplicationController
  def new
  end

  def create
    @new_like = Like.create(user: User.find(session[:user_id]), idea: Idea.find(params[:idea_hidden]))
    @add_count = Idea.find(params[:idea_hidden])
    @add_count.increment!(:likes)

    redirect_to '/bright_ideas/'
  end
end
