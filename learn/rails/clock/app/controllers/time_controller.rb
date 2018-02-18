class TimeController < ApplicationController
  def index
    time = Time.new
    @time_display = time.strftime('%b %g %G %r')
  end
end
