class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(cocktail_id:@cocktail.id)
    authorize @dose
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.user = current_user
    @dose.cocktail = @cocktail
    authorize @dose
    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: 'Your dose was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    authorize @dose
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end
end
