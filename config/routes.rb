Rails.application.routes.draw do
	get '/' => 'hipsters#index'
	get '/hipster' => 'hipsters#index'
	get '/hipster/new' => 'hipster#new'
	post '/hipster' => 'hipster#create'
	get '/hipster/:id' => 'hipsters#show'
end
