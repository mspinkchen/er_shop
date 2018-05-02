Rails.application.routes.draw do
  root "home#index"

    namespace :admin, path: "en1070416" do
    resources :products
    root "products#index"
  end

end
