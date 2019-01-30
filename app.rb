require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
 post '/piglatinize' do
        pp = PigLatinizer.new 
        @pl = pp.piglatinize(params[:string])
        erb :
  end
end

post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results
  end