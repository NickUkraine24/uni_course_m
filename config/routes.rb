Rails.application.routes.draw do
  resources :courses
  get 'landing_page/', to: "landing_page#index"
end
