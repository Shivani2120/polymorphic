Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: 'json'} do
   namespace :v1 do 
    # scope module: v1, constraints: ApiConstraints.new(version: 1) do
      resources :players
    end

   namespace :v2 do
    # scope module: v2, constraints: ApiConstraints.new(version: 2, default: true) do
      resources :players
    end
  end

  resources :players do
    resources :notes
    get :rollback
  end
  resources :posts
  root to: "projects#index"
  
  resources :projects do
    resources :tasks
  end
  
end
