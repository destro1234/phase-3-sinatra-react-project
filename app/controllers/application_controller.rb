class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/dogs' do
    Dog.all.to_json
  end

  get '/dogs/:id' do
    dog = Dog.find(params[:id])
    dog.to_json

  end

  get '/walks/:id' do
    walk = Walk.find(params[:id])
    walk.to_json
  end

  delete '/walks/:id' do
    walk = Walk.find(params[:id])
    walk.delete
  end

  delete '/dogs/:id' do
    dog = Dog.find(params[:id])
    dog.delete
  end


  get '/walks' do
    Walk.all.to_json
  end

  post '/dogs' do
    
    new_dog = Dog.create(params)
    new_dog.to_json
    
  end

  post '/walks' do

    new_walk = Walk.create(params)
    new_walk.to_json
  end

  post '/walks/:id' do
    binding.pry
    updated_walk = Walk.update(params)
    updated_walk
  end

end
