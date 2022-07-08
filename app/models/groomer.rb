class Groomer < ActiveRecord::Base
  has_many :appointments
  has_many :dogs, through: :appointments
  has_many :services, through: :appointments
end