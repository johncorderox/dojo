class HelloController < ApplicationController
  def index
    render text: 'Hello Coding Dojo'
  end
  def say
    render text: 'Saying Hello!'
  end
  def say2
    render text: 'Saying Hello joe!'
  end
  def say3
    redirect_to '/say/hello/joe'
  end
  def times
    if session.has_key?(:count)
      @session = session[:count] += 1
    else
      @session = session[:count] = 0
    end

  end
  def restart
    @session = session[:count] = nil
    redirect_to '/times'
  end
end
