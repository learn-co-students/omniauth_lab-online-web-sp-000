class SessionsController < ApplicationController

  def new
  end

  def create
    if request.env['omniauth.auth']
      @auth = request.env['omniauth.auth']
      user = User.find_by(uid: @auth[:uid])
      if !user
        user = User.new
        user.uid = @auth[:uid]
        user.name = @auth[:info][:name]
        user.email = @auth[:info][:email]
        user.save 
      end
      session[:user_id] = user.id
    end
  end

end
