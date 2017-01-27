Rails.application.routes.draw do
  root to: 'pages#index'
  get 'questions/topQuestions', to: 'questions#topQuestions'
  resources :users do
  end
  resources :questions, :answers
end
