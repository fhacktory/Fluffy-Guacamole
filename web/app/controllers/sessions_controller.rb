class SessionsController < ApplicationController
    def new
    end

    def create
      user = User.find_by(name: params[:session][:name].downcase)
      if user
          Rails.logger.debug "user present : #{user.name}"
          log_in user
          params[:session][:remember_me] == '1' ? remember(user) : forget(user)
          redirect_to user
      else
        Rails.logger.debug "user missing"
        flash.now[:danger] = 'Invalid name' # Not quite right!
        render 'new'
      end
    end

    def destroy
      log_out if logged_in?
      redirect_to root_url
    end

end