Rails.application.routes.draw do
  root to: 'customers#top'
  devise_for :admins
  devise_for :customers
  resources :customers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
