class User < ActiveRecord::Base

	def self.from_omniauth(auth)
	  where(uid: auth.uid).first_or_initialize.tap do |user|
	    user.provider = auth.provider
	    user.uid = auth.uid
	    user.f_name = auth.info.name.split(" ").first
	    user.l_name = auth.info.name.split(" ").last
	    user.email == nil ? user.email = auth.info.email : user.email = user.email 
	    user.fb_image_url = auth.info.image
	    user.oauth_token = auth.credentials.token
	    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
	    user.save!
	  end
	end

end
