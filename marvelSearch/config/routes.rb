Rails.application.routes.draw do
  resources :comics, only: [:index, :create, :destroy], defaults: {format: :json}
  root to: 'comics#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
