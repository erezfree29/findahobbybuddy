Rails.application.routes.draw do
  resources :buddie,only: [:index]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :buddies do
  resources :messages,only: [:new,:create,:index,:show]
    member do
    get 'show_other_buddie'
  end
end
  resources :users do
    member do
      get :confirm_email
      resources :buddies

    end
  end
end
