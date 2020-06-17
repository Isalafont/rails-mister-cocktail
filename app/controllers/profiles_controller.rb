class ProfilesController < ApplicationController
  def index
    policy_scope(User)
    @cocktail = Cocktail.find(params[:cocktail_id]) if params[:cocktail_id].present?
  end
end
