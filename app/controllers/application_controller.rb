class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    # { message: "Good luck with your project!" }.to_json
  end

  get "/create-appointment" do
    data = {}

    dogs = Dog.all
    groomers = Groomer.all
    services = Service.all

    data = dogs, groomers, services
    data.to_json
  end

  post "/create-appointment" do
    appointment = Appointment.create(
      dog_id: params[:dog_id],
      groomer_id: params[:groomer_id],
      appt_datetime: params[:appt_datetime],
      service_id: params[:service_id]
    )
  end

  get "/upcoming-appointments" do
    Appointment.upcoming_appointments.to_json
    # Appointment.all.select {|appointment| appointment.appt_datetime >= Time.now}.sort_by(&:appt_datetime)
  end

  get "/past-appointments" do
    Appointment.upcoming_appointments.to_json
  end

  get "/dogs" do
    dogs = Dog.all
    dogs.to_json
  end

  get "/groomers" do
    groomers = Groomer.all
    groomers.to_json
  end

  get "/services" do
    services = Service.all
    services.to_json
  end
end
