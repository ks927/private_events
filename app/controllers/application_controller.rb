class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    
  def sign_in(user)
     cookies.permanent.signed[:user_id] = user.id
  end

  def current_user
     @current_user ||= User.find_by(id: cookies.signed[:user_id]) 
  end
    
end
