Rails.application.routes.draw do
  root to: 'home#index' 

  resources :recipes
  get 'search', to:"home#search"
end
