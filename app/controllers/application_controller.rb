class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/dogs' do
    Dog.all.to_json(:include => :walks)
    # :include => :posts)
  end

  get '/dogs/:id' do
    dog = Dog.find(params[:id])
    dog.to_json
  end

  # get '/walks' do
  #   Walk.all.to_json
  # end
  
  # get '/walks/:id' do
  #   walk = Walk.find(params[:id])
  #   walk.to_json
  # end

  delete '/walks/:id' do
    walk = Walk.find(params[:id])
    walk.destroy
    walk.to_json
  end

  delete '/dogs/:id' do
    dog = Dog.find(params[:id])
    dog.destroy
    dog.to_json
  end
  
  post '/dogs' do
    new_dog = Dog.create(
      name: params[:name],
      address: params[:address],
      owner: params[:owner],
      image: params[:image]
      )
    new_dog.to_json
  end

  post '/walks' do
    new_walk = Walk.create(
      dogwalker: params[:dogwalker],
      starttime: params[:starttime],
      length: params[:length],
      dog_id: params[:dog_id]
      )
    new_walk.to_json
  end

  patch '/walks/:id' do
    walk = Walk.find(params[:id])
    walk.update(
      dogwalker: params[:dogwalker],
      starttime: params[:starttime],
      length: params[:length])
    walk.to_json
  end
end
