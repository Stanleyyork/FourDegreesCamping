class UsersController < ApplicationController

	before_filter :authorize, :only => [:profile]

	def profile
		@user = current_user
	end

	def settings
		user_params = params["user"]
		current_user.email = user_params["email"]
		current_user.attending = user_params["attending"]
		current_user.save
		redirect_to '/profile'
	end

	def create
    	@user = User.new(user_params)
	end

	private
	  def user_params
	    params.require(:user).permit(:f_name, :l_name, :email, :provider, :oauth_token, :oauth_expires_at, :location, :rsvp, :attending, :uid, :fb_image_url)
	  end

end