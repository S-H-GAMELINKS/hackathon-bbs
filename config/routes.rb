Rails.application.routes.draw do
  root to: 'web#index'
  devise_for :users
  resources :rooms do
    resources :messages
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
