class SessionsController < ApplicationController
    def create
        #binding.pry
        @auth = request.env['omniauth.auth']

        user = User.find_or_create_by_omniauth(@auth)
        session[:user_id] = user.id
        #binding.pry
    end
end