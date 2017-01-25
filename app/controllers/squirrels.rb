get '/squirrels' do
  @squirrels = Squirrel.all
  erb :'squirrels/index'
end

get '/squirrels/:id' do
  @squirrel = Squirrel.find(params[:id])
  erb :'squirrels/show'
end