class HomeController < ApplicationController
  def index
    @bulletins = Bulletin.order(created_at: :desc).limit(1)
    @products = Product.all  
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end
  
  
  def about
  end

  def delivery
  end

  def questions
  end
  
end
