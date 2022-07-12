class Appointment < ActiveRecord::Base
  belongs_to :dog
  belongs_to :groomer
  belongs_to :service

  def self.upcoming_appointments
    self.all.select {|appointment| appointment.appt_datetime >= Time.now}.sort_by(&:appt_datetime)
  end
end