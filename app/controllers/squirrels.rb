get '/squirrels' do
  @squirrels = Squirrel.all
  erb :'squirrels/index'
end

get '/squirrels/new' do
  require_user
  erb :'squirrels/new'
end

post '/squirrels' do
  require_user
  squirrel = Squirrel.new(params)
  if squirrel.save
    redirect '/squirrels'
  else
    @errors = squirrel.errors.full_messages
    erb :'squirrels/new'
  end
end

get '/squirrels/:id' do
  require_user
  @squirrel = Squirrel.find(params[:id])
  erb :'squirrels/show'
end

get '/squirrels/:id/edit' do
  require_user
  @squirrel = Squirrel.find_by(id: params[:id])
  erb :'squirrels/edit'
end

put '/squirrels/:id' do
  # binding.pry
  require_user
  @squirrel = Squirrel.find(params[:id])
  if @squirrel.update(params[:squirrel])
    redirect "/squirrels/#{@squirrel.id}"
  else
    @errors = @squirrel.errors.full_messages
    erb :'squirrels/edit'
  end
end



delete '/squirrels/:id' do

end
