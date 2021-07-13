Rails.application.routes.draw do
  root to: 'answers#new'
    resources :questions
    resources :answers
end
