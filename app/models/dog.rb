class Dog < ActiveRecord::Base
  has_many :appointments
  has_many :groomers, through: :appointments
  has_many :services, through: :appointments
end