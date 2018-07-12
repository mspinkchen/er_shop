Rails.application.routes.draw do
  root "home#index"

  resources :products, only: [:index, :show] 
  resources :bulletins, only: [:index, :show]
  resources :abouts,only: [:index]
  resources :contacts 


  namespace :admin, path: "en1070416" do
    resources :products
    root "products#index"
    resources :bulletins
    resources :categories
    resources :contacts, only: [:index, :destroy]
  end



end
