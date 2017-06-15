class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    helper_method :current_user
    
  def sign_in(user)
     cookies.permanent.signed[:user_id] = user.id
  end

  def current_user
     @current_user ||= User.find_by(id: cookies.signed[:user_id]) 
  end
    
  def signed_in?
     !current_user.nil? 
  end
    
  def sign_out(user)
     cookies.delete(:user_id) 
     @current_user = nil
  end
    
end
