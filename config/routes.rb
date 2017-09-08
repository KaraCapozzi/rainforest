Rails.application.routes.draw do

  resources :products
  get '/products' => 'products#index'
  post '/products/:id/reviews' => 'reviews#create'
  get '/' => 'products#index'# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products do
  resources :reviews
  end

  resources :products do
  resources :reviews, except: [:index, :new, :show]
  end

end
