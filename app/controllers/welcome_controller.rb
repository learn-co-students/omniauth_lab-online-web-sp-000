class WelcomeController < ApplicationController
  def home
    session.clear
  end
end
