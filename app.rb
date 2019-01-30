require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    pp = PigLatinizer.new 
    @pl = pp.piglatinize(params[:string])
    erb :results
  end
end

