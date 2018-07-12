class ProductsController < ApplicationController
    before_action :set_product, only: [:show]

  def index
    @products = Product.all
  end

  def show
    @photos = @product.photos.all
    @products = Product.where.not(params[:id])
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end
end
