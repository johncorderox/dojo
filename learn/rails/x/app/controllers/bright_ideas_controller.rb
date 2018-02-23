class BrightIdeasController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @idea =  User.joins(:ideas).select("Users.id as user_id, Users.alias, Ideas.content, Ideas.id")
  end
  def create
  @new_idea = Idea.create(content: params[:content], user: User.find(session[:user_id]))
  redirect_to '/bright_ideas'
  end
  def destroy
    @delete_idea = Idea.find(params[:id]).delete
    redirect_to "/bright_ideas"
  end
end
