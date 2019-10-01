Rails.application.routes.draw do
  get 'sessions/new'
  get 'signup', to: 'users#new'
  post 'signup',  to: 'users#create'
  # get 'static_pages/home'
  root 'static_pages#home'

  get  'help', to: 'static_pages#help', as: 'help'
  get  'about', to: 'static_pages#about'
  get  'contact', to: 'static_pages#contact'

  get    'login',   to: 'sessions#new'
  post   'login',   to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]

end
