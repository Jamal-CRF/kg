Rails.application.routes.draw do
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'services', to: 'pages#services'
  get 'articles', to: 'pages#articles'
  get 'articles/new', to: 'pages#new'
  get 'articles/:id', to: 'pages#show', as: 'article'
  post 'articles', to: 'pages#create'
  get 'contacts', to: 'pages#contacts'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
