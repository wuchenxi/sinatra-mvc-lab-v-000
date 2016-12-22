require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  post '/piglatinize' do
    plz=PigLatinizer.new()
    @result_text = plz.piglatinize(params[:user_phrase])
    erb :result
  end
end
