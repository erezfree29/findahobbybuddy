Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :buddies
  resources :users do
    member do
      get :confirm_email
      resources :buddies

    end
  end
end
