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
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
