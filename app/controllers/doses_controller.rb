class DosesController < ApplicationController
  before_action :set_cocktail, only: [:show, :create]
  def index
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
   @dose = Dose.new(dose_params)
   @ingredients = Ingredient.all
    if @dose.valid?
      @dose.save
      redirect_to cocktail_doses_path(@doses)
    else
      render :new
    end
  end

  def destroy
    @dose.destroy
  end

  def edit
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def update
  end

  def show
  end

end
