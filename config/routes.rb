Rails.application.routes.draw do

  root 'resumes#index'
  resources :resumes, only: [:index, :show, :new]

  namespace :api do
    resources :resumes, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
