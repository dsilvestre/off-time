class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  # def show
  # end

  def new
    @booking = Booking.new
    @equipment = Equipment.find(params[:equipment_id])
    @user = @equipment.user
  end

  def create
    @booking = Booking.new(booking_params)
    @equipment = Equipment.find(params[:equipment_id])
    @user = @equipment.user

    if @booking.save
      redirect_to user_path(@booking)

    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  #   respond_to do |format|
  #     if @booking.update(booking_params)
  #      format.html { redirect_to @booking, notice: 'Your booking was successfully updated.' }
  #      format.json { render :show, status: :ok, location: @booking }
  #     else
  #      format.html { render :edit }
  #      format.json { render json: @booking.errors, status: :unprocessable_entity }
  #    end
  #  end
  # end

  # def destroy
  # end

  private

  def equipment_params
    params.require(:booking).permit(:seller_id, :buyer_id, :equipment_id, :start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
