require "gossip"

class GossipProjectApp < Sinatra::Base
 
  	get '/' do
  	erb :index
	end

	get '/gossips/new/' do
	erb :new_gossip
	end

	post '/gossips/new' do
  	Gossip.new.save
	end
end