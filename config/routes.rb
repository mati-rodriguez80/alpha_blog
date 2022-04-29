Rails.application.routes.draw do
  # Pages
  root 'pages#home'
  get 'about', to: 'pages#about'
  # Articles
  resources :articles
  # Users
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  # Sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # Categories
  resources :categories, except: [:destroy]
end
