Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'


  devise_for :users
  root "home#index"
  get "/home/about" => "home#about"
  get "/home/delivery" => "home#delivery"
  get "/home/questions" => "home#questions"
  

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
