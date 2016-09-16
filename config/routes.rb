Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :price, only: [:index]
  resources :equipment, only: [:new, :index, :create, :show]
  resources :contracts, only: [:new, :create, :show, :index] do
    resources :receipts, only: [:new, :show, :create]
  end
  resources :customers, only: [:new, :create, :show]

end
