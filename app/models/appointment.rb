class Appointment < ActiveRecord::Base
  belongs_to :dog
  belongs_to :groomer
  belongs_to :service

  def self.upcoming_appointments
    # apptArray = []
    self.all.select {|appointment| appointment.appt_datetime >= Time.now}.sort_by(&:appt_datetime)
    # appts.as_json(:include => {:dogs}, :groomers, :services)
    
    # appts.map do |appt|
    #   apptObj = {
    #   dog_name: appt.dog.name,
    #   groomer_name: appt.groomer.name,
    #   service: appt.service.name
    #   appt_datetime: appt.appt_datetime
    # }
    #   # apptArray << apptObj
    #   end
    # apptArray
  end

  def self.past_appointments
    self.all.select {|appointment| appointment.appt_datetime <= Time.now}.sort_by(&:appt_datetime)
  end

  # def self.create_appointment
  #   upcoming = @upcoming_appointments
  #   upcoming
    # upcoming.map do |appt|
    #   if 
    # end
  # end
end