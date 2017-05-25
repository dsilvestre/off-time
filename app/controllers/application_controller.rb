class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, only: :home

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo, :photo_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :photo, :photo_cache])
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
