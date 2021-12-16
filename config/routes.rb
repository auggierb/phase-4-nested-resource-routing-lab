Rails.application.routes.draw do
  resources :items, only: [:index]do
  resources :users
end
  resources :users, only: [:show] do
    resources :items
  end
end
