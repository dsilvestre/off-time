class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home

  end

  def search
    @location = params[:location]
    @date-search = params[:date-search]

    @equipment = Equipment.all

    if !params[:location].nil? && !params[:location].empty?
      @equipment = @equipment.where(city: params[:location])
    end
    render :search_result

  end
end
