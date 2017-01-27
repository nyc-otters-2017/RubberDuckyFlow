Rails.application.routes.draw do
  root to: 'home#index'

  resources :users do
    resources :questions, :answers
  end
end
