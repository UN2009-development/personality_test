Rails.application.routes.draw do
  root 'questions#index'
    get 'questions' => 'questions#index'
    get 'questions/new' => 'questions#new'
end
