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
   @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/new'
    end
  end

  def destroy
    @dose.destroy
  end

  def edit
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def update
  end

  def show
  end

end
