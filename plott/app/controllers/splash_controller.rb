class SplashController < ApplicationController
  before_action :authenticate_user!, only: #:tbd

  #testing for user persistence
  def index
        if current_user
            puts "I'm logged in as #{current_user.email}"
        else
            puts "I'm not logged in"
        end
    end


    def destroy
      current_user.destroy
      redirect_to new_user_session
    end
end
