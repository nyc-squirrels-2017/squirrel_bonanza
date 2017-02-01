get '/squirrels' do
  @squirrels = Squirrel.all
  erb :'squirrels/index'
end

get '/squirrels/new' do
  # binding.pry
  # request.cookies
  require_user
  if request.xhr?
    erb :'squirrels/new', layout: false
  else
    erb :'squirrels/new'
  end
end

post '/squirrels' do
  require_user
  squirrel = Squirrel.new(params)
  if squirrel.save
    if request.xhr?
      erb :'squirrels/_one_squirrel', layout: false, locals:{one_squirrel: squirrel}
    else
      redirect '/squirrels'
    end
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
