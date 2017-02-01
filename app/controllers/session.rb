get '/session/login' do
  erb :'/session/login'
# end
end



post '/session/login' do
  user = User.find_by(email: params[:user][:email])
  if user && user.authenticate(params[:user][:password])
    session[:user_id]  = user.id
        session[:expire_after] = 60
    redirect '/squirrels'
  else
    @errors = ['Invalid email/password']
    erb :'/session/login'
  end
end


get '/session/logout' do
  session[:user_id] = nil
  redirect '/session/login'
end
