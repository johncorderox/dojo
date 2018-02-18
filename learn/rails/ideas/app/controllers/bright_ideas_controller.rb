class BrightIdeasController < ApplicationController
  def index
    @show_ideas = User.all.joins(:ideas).select("*")
  end
  def create
  @new_idea = Idea.create(idea: params[:idea], user: User.find(1))
  redirect_to '/bright_ideas'
  end
  def show
    @show_idea = Idea.all.joins(:user).where(user: User.find(1), id: params[:id]).select("*")
  end
end
