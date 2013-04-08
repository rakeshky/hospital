class ApplicationController < ActionController::Base
  protect_from_forgery
  def fetch_current_name(user_id)
	logger.info"@@@@@@@@@@@@@@2 #{user_id.inspect}"
	@user_details=Consultant.find(user_id).doctor
return @user_details
end
end
