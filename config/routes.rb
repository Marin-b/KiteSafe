Rails.application.routes.draw do
  get 'map/show'
  devise_for :users
  root to: 'pages#home'

  resource :map, only: :show

  resources :spots do
    resources :advices
    resources :photos, only: [:new, :create, :destroy]
    resources :difficulty_levels, only: [:new, :create]
    resources :reviews, only: [:new, :create, :destroy]
  end

  get 'onboarding', to: "onboarding#first"

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
