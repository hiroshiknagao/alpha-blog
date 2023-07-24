Rails.application.routes.draw do
  get 'migration/create_articles'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: [:show]
  
end
