Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users
  root "home#index"
  get "/home/about" => "home#about"
  

  resources :products, only: [:index, :show] 
  resources :bulletins, only: [:index, :show]
  resources :abouts,only: [:index]
  resources :contacts do
    collection do
      get :delivery 
    end
  end
  get "/contacts/delivery" => "contacts#delivery"



  namespace :admin, path: "en1070416" do
    resources :products
    root "products#index"
    resources :bulletins
    resources :categories
    resources :contacts, only: [:index, :destroy]
  end



end
