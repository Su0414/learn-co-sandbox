require_relative 'config/environment'

class App < Sinatra::Base
  
  # Create 
  get '/model/new' do 
    erb :new 
  end 
  
  post '/models' do 
    # Model.create(some_attribute: params[:some_attribute])
  end 
  
  # Read
  
  get '/models' do 
    @models = Model.all
  end 
  
  get '/models/:id' do 
    @model = Model.find(params[:id])
    erb :show 
  end 
  
  # update 
  
  get '/models/:id/edit' do 
    erb :edit
  end 
  
  patch '/models/:id' do 
  end 
  
  
  
  
end