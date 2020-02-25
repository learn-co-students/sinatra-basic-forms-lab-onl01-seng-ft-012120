require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do

    erb :create_puppy
  end

  post '/puppy' do
    info = params.to_h.transform_keys!(&:to_sym)
    @puppy = Puppy.new(info)
  
    erb :display_puppy
  end
end
