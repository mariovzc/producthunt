class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def sign_in(user)
    cookies.permanent.signed[:user_id] = user.id
    @current_user = user
  end
  
  def sign_out
    cookies.delete(:user_id)
    @current_user = nil
  end
  
end
