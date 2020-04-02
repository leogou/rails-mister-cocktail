Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :ingredients, only: [:new, :create, :index, :update, :destroy] do
    resources :doses, only: [:new, :create]
  end
end
