class FavorsController < ApplicationController
  def new
    @favor = Favor.new
  end

  def create
    @favor = Favor.new(favor_params)
    @favor.user = current_user

    if @favor.save
      redirect_to favors_path
    else
      render 'new'
    end
  end

  def index
    @favors = Favor.all.sort_by &:created_at
  end

  private

  def favor_params
    params.require(:favor).permit(:favor, :details, :significance, :link)
  end
end
