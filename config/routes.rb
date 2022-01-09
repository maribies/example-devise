Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    registrations: 'registrations',
  }
  root to: "home#index"

  get 'users/show', to: 'users#show', as: 'user_root'
end
