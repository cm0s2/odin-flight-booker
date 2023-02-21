class PassengerMailer < ApplicationMailer
  default from: 'bookings@example.com'

  def booking_confirmation_email
    @passenger = params[:passenger]
    @flight = params[:flight]
    mail(to: @passenger.email, subject: 'Booking Confirmation')
  end
end
