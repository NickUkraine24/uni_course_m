Rails.application.routes.draw do
  devise_for :users

  resources :courses do
    resources :lessons
  end
  get 'landing_page/', to: 'landing_page#index'
  root 'landing_page#index'
  get 'landing_page/activity'
  resources :users, only: [:index, :edit, :show, :update]
end
