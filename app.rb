require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  # get '/' do
  #   erb :user_input
  # end
  
  # post '/' do
  #   user_word = params["user_phrase"]
  #   word = PigLatinizer.new
  #   @pig_latinized_word = word.to_pig_latin(user_word)
  #   erb :final
  # end
  
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    translator = PigLatinizer.new
    translator.to_pig_latin(params[:user_phrase])
  end
  
end