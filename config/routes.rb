Rails.application.routes.draw do
  devise_for :users
  resources :courses
  get 'landing_page/', to: 'landing_page#index'
  root 'landing_page#index'
end
