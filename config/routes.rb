Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :volunteers, :only => [:index, :new, :create]
  get 'terms_and_conditions', to:'static_pages#terms_and_conditions'
  get 'about_us', to:'static_pages#about_us'
  get 'protests', to:'static_pages#protests'
  root 'volunteers#new'
end
