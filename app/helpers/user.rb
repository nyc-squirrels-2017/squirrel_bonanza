def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end


def login?
  # current_user ? true : false
  !!current_user
end

def require_user
  redirect '/session/login' unless current_user

end
