Rails.application.routes.draw do

  resources :products
  get '/products' => 'products#index'
  post '/products/:id/reviews' => 'reviews#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
