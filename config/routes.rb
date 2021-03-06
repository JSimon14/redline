Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :volunteers, :only => [:index, :new, :create]
  get 'privacy_policy', to:'static_pages#privacy_policy'
  get 'about_us', to:'static_pages#about_us'
  get 'protests', to:'static_pages#protests'
  root 'volunteers#new'
end
