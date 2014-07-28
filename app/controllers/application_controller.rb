class ApplicationController < ActionController::Base
  protect_from_forgery
	has_mobile_fu
	before_filter :mobile

	private
		def mobile
			if is_mobile_device?
				self.class.layout "layouts/application"
			end
		end

end
