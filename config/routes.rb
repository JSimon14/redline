Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :volunteers, :only => [:index, :new, :create]
  get 'terms_and_conditions', to:'static_pages#terms_and_conditions'
  root 'volunteers#index'
end
