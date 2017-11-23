Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'

  resources :missions, only: [:index, :show] do
    resources :applies, only: :create, shallow: true do
      resources :accepteds, module: :applies, only: :create
    end
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
