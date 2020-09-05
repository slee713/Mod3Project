Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index'
  get '/users/:username', to:'users#show'
  post '/users', to: 'users#create'
  patch '/users/:username', to: 'users#update'
  delete '/users/:username', to: 'users#destroy'
  get '/scores', to: 'scores#index'
  
end
