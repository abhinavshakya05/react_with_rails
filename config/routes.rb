Rails.application.routes.draw do
  root 'pages#index'

  namespace :api, defaults: { format: 'json' } do
    resources :posts, only: [:index, :create]
  end

  # NOTE #
  # This `match` must be the *last* route in routes.rb
  match '*path', to: 'pages#index', via: :all
end
