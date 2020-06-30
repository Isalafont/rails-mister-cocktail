class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update]

  def index
    @cocktails = policy_scope(Cocktail)
  end

  def show
    # @cocktail = Cocktail.find(params[:id])
    authorize @cocktail
  end

  def new
    @cocktail = Cocktail.new
    authorize @cocktail
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    authorize @cocktail
    if @cocktail.save
      redirect_to cocktail_path(@cocktail), notice: 'Your cocktail was successfully created.'
    else
      render :new
    end
  end

  def edit
    authorize @cocktail
  end

  def update
    authorize @cocktail
    @cocktail.update(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cave), notice: 'Your cocktail was successfully updated.'
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
