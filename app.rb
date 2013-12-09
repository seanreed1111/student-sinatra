require 'sinatra/base'
require './lib/thing'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/' do
      "hello world!"
    end

 #    get '/hello-world' do
	
	# @numbers = []
	# @numbers = Array (1..20)
	# erb :hello
	# end

    get '/hello-world' do
        @thing = Thing.new("ashley", 6)
        erb :hello
    end
    end
  
end

# ♦♥♣♠