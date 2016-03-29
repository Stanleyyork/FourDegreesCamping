Rails.application.routes.draw do

	get '/' => 'application#homepage'
  
	get 'auth/:provider/callback', to: 'sessions#create'
	get 'auth/failure', to: redirect('/')
	get 'signout', to: 'sessions#destroy', as: 'signout'

	get '/profile' => 'users#profile'
	get '/about' => 'application#about'
	post '/settings' => 'users#settings'

end
