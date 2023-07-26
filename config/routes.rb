Rails.application.routes.draw do
  get 'migration/create_articles'
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: [:show, :index, :new, :create, :edit, :update]
  
end
