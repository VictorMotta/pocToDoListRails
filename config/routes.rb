Rails.application.routes.draw do
  resources :tasks, only: [:create, :destroy]
  root to: "tasks#index"
end
