module ApplicationHelper
  def signed_in?
    !current_user.nil?
  end
  
  def current_user
    @current_user ||= User.find(cookies.signed[:user_id]) if cookies.signed[:user_id]
  rescue ActiveRecord::RecordNotFound
  end
end
