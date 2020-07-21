Rails.application.routes.draw do
  root 'tops#index'
  devise_for :shops
  devise_for :users

  resources :rooms, :only => [:show, :create] do
    resources :messages, :only => [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
