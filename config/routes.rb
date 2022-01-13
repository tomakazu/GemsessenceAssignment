Rails.application.routes.draw do
  root 'homes#show'
  resources :users, only: [:create, :new]
  resources :questions
  get 'test', to: 'home#test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
