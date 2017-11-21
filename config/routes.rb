Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :missions, only: [:index, :show]

  resources :applies, only: :create do
    resources :accepteds, module: :applies, only: :create
  end

  namespace :bootcamper do
    resources :missions, only: :index
  end

  resources :requests, only: :index do
    resources :accepteds, module: :requests, only: :create
  end

  resources :projects, only: [:index, :show, :new, :create] do
    scope module: :projects do
      resources :ongoings, only: [:new, :create]
      resources :delivereds, only: :create
      resources :paidoffs, only: :create
      resources :signedoffs, only: :create
    end
  end

  namespace :company do
    resources :projects, only: [:index, :show]
  end
end
