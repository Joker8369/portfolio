Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'projects#index'
  resources :users, except: %i[new create destroy]
  resources :projects
  resources :contacts, only: [:new, :create,:index] do
  end

end
