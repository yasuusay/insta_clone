Rails.application.routes.draw do
    root 'users#new'
    resources :users, only: [:new, :create, :show]
    
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    post 'logout', to: 'user_sessions#destroy'
end
