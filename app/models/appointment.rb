class Appointment < ActiveRecord::Base
  belongs_to :dogs
  belongs_to :groomers
  has_many :services
end