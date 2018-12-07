require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
  erb :user_input
end

post '/piglatinize' do
  input=params[:"user_phrase"]
  word=PigLatinizer.new
  @pig_latinized_word=word.sentence_pig_latinizer(input)
  erb :piglatinize
end

end
