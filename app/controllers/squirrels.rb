get '/squirrels' do
  @squirrels = Squirrel.all
  erb :'squirrels/index'
end