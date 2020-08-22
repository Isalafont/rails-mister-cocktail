class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:index, :show], :raise => false

  # after_action :verify_authorized, except: [:index, :show]
  after_action :verify_policy_scoped, only: [:index]

  def index
    # skip_policy_scope
    @cocktails = policy_scope(Cocktail)
    skip_authorization
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    skip_authorization
  end

  def new
    @cocktail = Cocktail.new
    authorize @cocktail
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    authorize @cocktail
    @cocktail.user = current_user
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
      redirect_to cocktail_path(@cocktail), notice: 'Your cocktail was successfully updated.'
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
