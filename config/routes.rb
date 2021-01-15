Rails.application.routes.draw do
  root 'orders#index'
  devise_for :users
  post '/orders/submit', to: 'orders#submit'
 end