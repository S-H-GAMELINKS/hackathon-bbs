Rails.application.routes.draw do
  namespace :dashboard do
    resources :admins
    resources :users
    resources :rooms
    resources :messages
    resources :categories

    root to: "admins#index"
  end
  devise_for :admins, controllers: {
    sessions: 'dashboard/sessions',
  }
  root to: 'web#index'
  devise_for :users
  resources :users, only: [:show] do
    collection do
      get 'mypage'
    end
  end
  resources :rooms do
    resources :messages
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
