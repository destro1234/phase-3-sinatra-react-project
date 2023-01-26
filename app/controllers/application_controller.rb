class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #Create Dogs
  post '/dogs' do
    new_dog = Dog.create(
      name: params[:name],
      address: params[:address],
      owner: params[:owner],
      image: params[:image],
      walks: []
      )
    new_dog.to_json
  end

  #Read Dogs and Walks
  get '/dogs' do
    Dog.all.to_json(:include => :walks)
  end

  #Read Dogs
  get '/dogs/:id' do
    dog = Dog.find(params[:id])
    dog.to_json
  end
  
  #Delete Dogs
  delete '/dogs/:id' do
    dog = Dog.find(params[:id])
    dog.destroy
    dog.to_json
  end
  
  #Create Walks
  post '/walks' do
    new_walk = Walk.create(
      dogwalker: params[:dogwalker],
      starttime: params[:starttime],
      length: params[:length],
      dog_id: params[:dog_id]
      )
    new_walk.to_json
  end

  #Read Walks
  get '/walks' do
    Walk.all.to_json
  end


  #Update Walks
  patch '/walks/:id' do
    walk = Walk.find(params[:id])
    walk.update(
      dogwalker: params[:dogwalker],
      starttime: params[:starttime],
      length: params[:length])
    walk.to_json
  end

  #Delete Walks
  delete '/walks/:id' do
    walk = Walk.find(params[:id])
    walk.destroy
    walk.to_json
  end
end
