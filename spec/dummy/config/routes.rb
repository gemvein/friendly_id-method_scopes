Rails.application.routes.draw do
  resources :authors do
    resources :books
  end
  root 'authors#index'
end
