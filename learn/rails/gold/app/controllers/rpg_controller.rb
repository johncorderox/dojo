class RpgController < ApplicationController
  def farm
    gold = rand(10..20)
    session[:gold] += gold
    msg = "You wont #{gold} #{Time.now}"
    session[:chat].push(msg)
    redirect_to '/'
  end

  def index
    session[:chat] || = []
  end
end
