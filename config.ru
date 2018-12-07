require './config/environment'

run App

class Sinatra::Base
  set :show_exceptions => false

  error { |err|
    Rack::Response.new(
      [{'error' => err.message}.to_json],
      500,
      {'Content-type' => 'application/json'}
    ).finish
  }
end
