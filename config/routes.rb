Rails.application.routes.draw do
  devise_for :users
  resources :players do
    resources :notes
    get :rollback
  end
  resources :posts
  root to: "home#index"

end
