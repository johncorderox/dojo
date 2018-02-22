class BrightIdeasController < ApplicationController
  def index
    @show_ideas =User.all.joins(:ideas).select("Users.id as id, Users.name, Ideas.idea, Ideas.id as idea_id")
    @show_name = User.find(session[:user_id])
  end
  def create
  @new_idea = Idea.create(idea: params[:idea], user: User.find(session[:user_id]))
  redirect_to '/bright_ideas'
  end
  def show
    @show_original_idea =  User.all.joins(:ideas).where("Ideas.id": Idea.find(params[:id])).select(:alias)
    @show_idea = Like.all.joins(:user).select("Users.alias, Users.name").where(idea: Idea.find(params[:id]))
  end
end
