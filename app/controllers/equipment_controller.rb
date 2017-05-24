class EquipmentController < ApplicationController
  def index
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
    params.require(:equipment).permit(:title, :photo, :photo_cache, :price, :country, :city, :postal_code, :street, :building_number, :category)
  end
end
