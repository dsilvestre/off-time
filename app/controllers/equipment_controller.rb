class EquipmentController < ApplicationController
  before_action :set_equipment, only: [:show, :edit, :update, :destroy]

  def index
    @equipment = Equipment.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@equipment) do |equipment, marker|
      marker.lat equipment.latitude
      marker.lng equipment.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
  end

  def new
    @equipment = Equipment.new
    @categories = ["GUN (7-12 feet)", "LONGBOARD (9-12 feet)", "HYBRID/ FUNBOARD (7-9 feet)", "SHORTBOARD (5.5-7 feet)", "EGG (6-8.5 feet)", "FISH (under 7 feet)", "TOW-IN (5-6 feet)"]
  end

  def create
    @equipment = Equipment.new(equipment_params)

    if @equipment.save
      redirect_to current_user

    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def equipment_params
    params.require(:equipment).permit(:title, :photo, :photo_cache, :price, :country, :city, :postal_code, :street, :building_number, :category, :user_id)
  end

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end
end
