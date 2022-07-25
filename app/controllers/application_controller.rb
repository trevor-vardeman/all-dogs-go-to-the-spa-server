class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
  end

  get "/appointments" do
    Appointment.upcoming_appointments.to_json(include: [:service, :dog, :groomer])
  end

  get "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.to_json(include: [:service, :dog, :groomer])
  end

  delete "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.destroy
    appointment.to_json
  end

  get "/create-appointment" do
    data = {}

    dogs = Dog.all
    groomers = Groomer.all
    services = Service.all

    data = dogs, groomers, services
    data.to_json
  end

  get "/appointments/edit/:id" do
    data = {}

    dogs = Dog.all
    groomers = Groomer.all
    services = Service.all

    data = dogs, groomers, services
    data.to_json
  end

  patch "/appointments/edit/:id" do
    appointment = Appointment.find(params[:id])
    appointment.update(
      dog_id: params[:dog_id],
      groomer_id: params[:groomer_id],
      appt_datetime: params[:appt_datetime],
      service_id: params[:service_id]
    )
    appointment.to_json
  end

  post "/create-appointment" do
    appointment = Appointment.create(
      dog_id: params[:dog_id],
      groomer_id: params[:groomer_id],
      appt_datetime: params[:appt_datetime],
      service_id: params[:service_id]
    )
  end

  get "/past-appointments" do
    Appointment.past_appointments.to_json(include: [:service, :dog, :groomer])
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
