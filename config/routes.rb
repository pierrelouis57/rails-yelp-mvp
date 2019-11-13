Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show, :delete] do
    resources :reviews, only: [:new, :create]
  end
end
