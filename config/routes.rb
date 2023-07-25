Rails.application.routes.draw do
  resources :days do
    resources :notes
  end

  devise_for :users
  root 'days#index'

  get 'search', to: 'search#index'

end
