Create
get '/shoes/new' new.erb
post '/shoes'

Read
get '/shoes' all shoes index.erb
get '/shoes/:id' one shoe show.erb


Update
put/patch '/shoes/:id' updating the data on the server
get '/shoes/:id/edit' form to edit shoe
edit.erb


Delete
delete '/shoes/:id'


