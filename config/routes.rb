Rails.application.routes.draw do


  devise_for :users
  resources :listings do
    resources :orders
  end

  get 'pages/about'
  get 'pages/contact'

  root 'listings#index'

  get 'seller' => "listings#seller"

end
