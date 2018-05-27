Rails.application.routes.draw do
  root "static_pages#home"
  namespace :admin do
    root "static_pages#home"
    resources :categories
    resources :users, only: %i(index edit update destroy)
  end
end
