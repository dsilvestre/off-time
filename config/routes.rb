Rails.application.routes.draw do

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [ :show, :index ] do
    resources :equipment, except: [ :show, :index ]
  end

  resources :equipment, only: [ :show, :index ] do
    resources :bookings
  end

  root to: 'pages#home'

  get 'search_result', to: 'equipment#search_result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
