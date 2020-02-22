Rails.application.routes.draw do

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies, only: [:show] do
    # resources :users, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    resources :tasks, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    resources :users, only: [:show] do
      resources :tasks, only: [:index, :new, :create, :show, :edit, :update, :destroy]
    end
  end

  root to: 'pages#home'
end



