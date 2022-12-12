class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/dogs' do
    Dog.all.to_json
  end

  post '/dogs' do
    
    new_dog = Dog.create(params)
    new_dog.to_json
  end

end
