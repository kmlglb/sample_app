module SessionsHelper
  #Log in the given user
  def log_in(user)
    session[:user_id] = user.id
  end
  
  #resturns the current logged in user (it there is one)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  #returns true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end
  
  #logs out the current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
    
end
