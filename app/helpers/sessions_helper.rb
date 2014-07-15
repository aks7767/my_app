module SessionsHelper
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end
  
  def current_user=(user) #set
    @current_user = user
  end
  
  def current_user #get
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
end
