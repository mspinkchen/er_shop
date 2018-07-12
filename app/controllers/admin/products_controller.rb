class Admin::ProductsController < Admin::BaseController
   before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new

  end

  def show

  end

  def create
    @product = Product.new(product_params) 
    if @product.save     
      flash[:notice]= "Product was successfully created"
      redirect_to admin_products_path
    else
    flash[:alert]= "Product was failed to create"
    render :new
    end
  end

  def update
    if @product.update(product_params)

      flash[:notice]= "Product was successfully update"
      redirect_to admin_products_path
    else
      flash[:alert]="Product was failed to update"
      render :edit
    end
  end


  def destroy
    @product.destroy
    redirect_to admin_products_path
  end


  private

    def set_product
      @product = Product.find(params[:id])
    end
    
    def product_params
      params.require(:product).permit(:name, :en_name, :description, :price, :flavor)
    end
end
