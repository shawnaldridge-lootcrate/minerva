Rails.application.routes.draw do
  
  mount ActionCable.server => '/cable'

  get 'crates/index'
  get 'spawn_publisher', to: 'data#spawn_publisher'
  get 'spawn_subscriber', to: 'data#spawn_subscriber'
  get 'spawn_message', to: 'data#spawn_message'

  root 'crates#index'

  resources :messages
end
