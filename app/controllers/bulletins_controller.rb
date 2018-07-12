class BulletinsController < ApplicationController
  def index
    @bulletins = Bulletin.order(created_at: :desc).page(params[:page]).per(8)
  end

end
