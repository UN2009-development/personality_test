Rails.application.routes.draw do
<<<<<<< HEAD
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :questions
=======
  root 'questions#index'
    get 'questions' => 'questions#index'
    get 'questions/new' => 'questions#new'
>>>>>>> 1d64b454c5f7324f3c548557f4a2a002b239e1a4
end
