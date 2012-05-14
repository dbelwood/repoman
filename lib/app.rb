require 'sinatra'

class App < Sinatra::Base
	######################################################
	# Projects
	######################################################
	#GET '/projects/'
	get '/projects' do
		Project.all.to_json
	end

	#POST '/projects/'
	post '/projects' do
	end

	#GET '/projects/:name'
	get '/projects/:name' do
		Project.key[:name].to_json
	end

	#PUT '/projects/:name'
	put '/projects/:name' do
	end

	#DELETE '/projects/:name'
	delete '/projects/:name' do
	end

	######################################################
	# Organizations
	######################################################
	#GET '/projects/:name/organizations'
	get '/projects/:name/organizations' do
	end

	#GET '/projects/:name/organizations/:org_name'
	get '/projects/:name/organizations/:org_name' do
	end

	#POST '/projects/:name/organizations'
	post '/projects/:name/organizations' do
	end

	#PUT '/projects/:name/organizations/:org_name'
	put '/projects/:name/organizations/:org_name' do
	end

	#DELETE '/projects/:name/organizations/:org_name'
	delete '/projects/:name/organizations/:org_name' do
	end

	######################################################
	# Tickets
	######################################################
	#GET '/projects/:name/tickets'
	get '/projects/:name/tickets' do
	end

	#GET '/projects/:name/tickets/:id'
	get '/projects/:name/tickets/:id' do
	end

	#POST '/projects/:name/tickets'
	post '/projects/:name/tickets' do
	end

	#PUT '/projects/:name/tickets/:id'
	put '/projects/:name/tickets/:id' do
	end

	#DELETE '/projects/:name/tickets/:id'
	delete '/projects/:name/tickets/:id' do
	end

	######################################################
	# Releases
	######################################################
	#GET '/projects/:name/releases'
	get '/projects/:name/releases' do
	end

	#GET '/projects/:name/releases/:rel_name'
	get '/projects/:name/releases/:rel_name' do
	end

	#POST '/projects/:name/releases'
	post '/projects/:name/releases' do
	end

	#PUT '/projects/:name/releases/:rel_name'
	put '/projects/:name/releases/:rel_name' do
	end

	#DELETE '/projects/:name/releases/:rel_name'
	delete '/projects/:name/releases/:rel_name' do
	end

	######################################################
	# Commits
	######################################################
	#GET '/projects/:name/commmits'
	get '/projects/:name/organizations/:org_name/commmits' do
	end

	#GET '/projects/:name/commmits/:id'
	get '/projects/:name/organizations/:org_name/commmits/:id' do
	end

	######################################################
	# Changes - Manual
	######################################################
	#GET '/projects/:name/organizations/:org_name/changes'
	get '/projects/:name/organizations/:org_name/changes' do
	end

	#GET '/projects/:name/organizations/:org_name'
	get '/projects/:name/organizations/:org_name/changes/:id' do
	end

	#POST '/projects/:name/organizations/:org_name/changes'
	post '/projects/:name/organizations/:org_name/changes' do
	end

	#PUT '/projects/:name/organizations/:org_name/changes/:id'
	put '/projects/:name/organizations/:org_name/changes/:id' do
	end

	#DELETE '/projects/:name/organizations/:org_name/changes/:id'
	delete '/projects/:name/organizations/:org_name/changes/:id' do
	end	

	######################################################
	# Commit Changes
	######################################################	
	#GET '/projects/:name/organizations/:org_name/commmits/:id/changes'
	get '/projects/:name/organizations/:org_name/commmits/:id/changes' do
	end

	#GET '/projects/:name/organizations/:org_name/commmits/:id/changes/:change_id'
	get '/projects/:name/organizations/:org_name/commmits/:id/changes/:change_id' do
	end

	#POST '/projects/:name/organizations/:org_name/commmits/changes'
	post '/projects/:name/organizations/:org_name/commmits/changes' do
	end

	#PUT '/projects/:name/organizations/:org_name/commmits/:id/changes/:change_id'
	put '/projects/:name/organizations/:org_name/commmits/:id/changes/:change_id' do
	end

	#DELETE '/projects/:name/organizations/:org_name/commmits/:id/changes/:change_id'
	delete '/projects/:name/organizations/:org_name/commmits/:id/changes/:change_id' do
	end

	######################################################
	# Ticket Changes
	######################################################	
	#GET '/projects/:name/tickets/:id/changes/'
	get '/projects/:name/tickets/:id/changes' do
	end

	#GET '/projects/:name/tickets/:id/changes/:change_id'
	get '/projects/:name/tickets/:id/changes/:change_id' do
	end

	#POST '/projects/:name/tickets/changes/'
	post '/projects/:name/tickets/:id/changes/:change_id' do
	end

	#PUT '/projects/:name/tickets/:id/changes/:change_id'
	put '/projects/:name/tickets/:id/changes/:change_id' do
	end

	#DELETE '/projects/:name/tickets/:id/changes/:change_id'
	delete '/projects/:name/tickets/:id/changes/:change_id' do
	end
end