Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"
    resources :users do
      resources :posts do
        resources :comments
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

