class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Good luck with your project!" }.to_json
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
    { message: "Good luck with your project!" }.to_json
  end

  get "/past-appointments" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/dogs" do
  end

  get "/groomers" do
  end

  get "/services" do
  end
end
