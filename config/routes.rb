Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create, :index]
  end
  resources :doses, only: [:destroy, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
