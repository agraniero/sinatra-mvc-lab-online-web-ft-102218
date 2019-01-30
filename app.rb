require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
 post '/piglatinize' do
        string = PigLatinizer.new 
        @user_phrase = user_phrase.piglatinize(params[:user_phrase])
        @user_phrase
  end
end