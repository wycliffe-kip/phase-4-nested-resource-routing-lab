Rails.application.routes.draw do
  resources :items, only: [:index, :show]
  resources :users, only: [:show] do 
    # nested resource for items
    resources :items, only: [:index, :create, :show]
  end 
end
