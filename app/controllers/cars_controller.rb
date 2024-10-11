class CarsController < ApplicationController
  def index
    if params[:query].present?
      @cars = Car.search_by_title_and_brand_and_year(params[:query])
    else
      @cars = Car.all
    end
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.image_url = "https://www.autocar.co.uk/sites/autocar.co.uk/files/1-mercedes-benz-s-class-2022-road-test-review-tracking-front.jpg"
    if @car.save
      redirect_to cars_path, notice: 'Car was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to car_path(@car)
  end


private

  def car_params
    params.require(:car).permit(:brand, :model, :year)
  end
end
