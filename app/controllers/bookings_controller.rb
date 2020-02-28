class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @bookings = Booking.all
  end

  def my_tool
    @tool = Tool.find(params[:tool])
    @bookings = @tool.bookings
  end

  def show
  end

  def new
    @start_date = params[:booking_info][:start_date]
    @end_date = params[:booking_info][:end_date]
    @tool = Tool.find(params[:tool_id])
    @booking = Booking.new
    @booking.save
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.tool = Tool.find(params[:tool_id])
    @booking.user = current_user
    days = @booking.end_date.to_date.mjd - @booking.start_date.to_date.mjd
    @booking.price_total = days * @booking.tool.price
    if @booking.save
      redirect_to dashboard_path, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to dashboard_path, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path, notice: 'Booking was successfully destroyed.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
