class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  # def home
  #   redirect_to cocktails_path unless current_user.nil?
  # end
end
