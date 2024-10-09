class UsersController < ApplicationController
  def profile
    @bookings = Booking.where(user_id: current_user.id)
    @cars = Car.where(user_id: current_user.id)
  end
end
