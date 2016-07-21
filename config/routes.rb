Rails.application.routes.draw do
  devise_for :users
  resources :lists
  resources :my_lists

    # get 'lists/index'
    root 'lists#index'
    # get '/lists/', to: 'lists#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
