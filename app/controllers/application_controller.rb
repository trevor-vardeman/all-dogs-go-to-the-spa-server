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

    dogs = Dog.all.where(archived: false)
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
    dogs = Dog.all.where(archived: false)
    dogs.to_json
  end

  patch "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.update(archived: params[:archived])
    dog.to_json
  end

  post "/create-dog" do
    dog = Dog.create(
      name: params[:name],
      breed: params[:breed],
      age: params[:age],
      photo_url: params[:photo_url],
      archived: params[:archived]
    )
  end

  get "/archived-dogs" do
    dogs = Dog.all.where(archived: true)
    dogs.to_json
  end

  get "/groomers" do
    groomers = Groomer.all.where(offboarding_date: "")
    groomers.to_json
  end

  get "/offboarded-groomers" do
    groomers = Groomer.all.where.not(offboarding_date: "")
    groomers.to_json
  end

  post "/create-groomer" do
    groomer = Groomer.create(
      name: params[:name],
      onboarding_date: params[:onboarding_date],
      offboarding_date: params[:offboarding_date]
    )
  end

  get "/services" do
    services = Service.all
    services.to_json
  end
end
