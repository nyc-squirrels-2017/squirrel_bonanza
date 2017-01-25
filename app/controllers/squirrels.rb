get '/squirrels' do
  @squirrels = Squirrel.all
  erb :'squirrels/index'
end

get '/squirrels/:id' do
  erb :'squirrels/show'
end