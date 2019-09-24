class HorsesController < ApplicationController
  def index
    @horse = Horse.all
  end

  def new
    @horse = Horse.new
  end

  def create
    Horse.create(horse_params)
    redirect_to root_path
  end

  private

  def horse_params
    params.require(:horse).permit(:opinion, :name)
  end
end
