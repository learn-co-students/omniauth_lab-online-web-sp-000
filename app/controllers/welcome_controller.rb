class WelcomeController < ApplicationController
  def home
    if session[:name]
      raise session[:name].inspect
    end
  end
end
