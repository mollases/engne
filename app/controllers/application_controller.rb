class ApplicationController < ActionController::Base
  protect_from_forgery
 helper_method :current_user
end


#what is this here for?
private
def current_user
	if member_signed_in?
		current_member
	else
		nil
	end
end
