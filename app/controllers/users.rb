get '/users/new' do
  erb :'/users/new'
end


post '/users' do
  # {user: {username: 'sdfs', email: "sfjhskdf", password: '123456'}}
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect '/squirrels'
  else
    @errors = user.errors.full_messages
    erb :'/users/new'
  end
end
