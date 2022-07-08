class Service < ActiveRecord::Base
  has_many :appointments
  has_many :dogs, through: :appointments
  has_many :groomers, through: :appointments
end