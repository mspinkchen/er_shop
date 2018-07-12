class Admin::BulletinsController < Admin::BaseController
  before_action :set_bulletin, only: [:show, :edit, :update, :destroy]

  def index
    @bulletins = Bulletin.order(created_at: :desc).page(params[:page]).per(8)
  end

  def new
    @bulletin = Bulletin.new
  end

  def create
    @bulletin = Bulletin.new(bulletin_params)
    if @bulletin.save
      flash[:notice]= "Bulletin was successfully created"
      redirect_to admin_bulletins_path
    else
      flash[:alert]= " was failed to create"
      render :new
    end
  end

  def update
    if @bulletin.update(bulletin_params)
      flash[:notice]= "Bulletin was successfully update"
      redirect_to admin_bulletins_path
    else
      flash[:alert]="Bulletin was failed to update"
      render :edit
    end
  end


  def destroy
    @bulletin.destroy
    redirect_to admin_bulletins_path
  end


  private

    def set_bulletin
      @bulletin = Bulletin.find(params[:id])
    end
    
    def bulletin_params
      params.require(:bulletin).permit(:title, :body, :author, :tag, :picture, :category_id)
    end
end
