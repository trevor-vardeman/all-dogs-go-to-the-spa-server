puts "🌱 Seeding dogs..."

Dog.create(
  name: "Droopy",
  breed: "Hound",
  age: 3,
  photo_url: "https://images.dog.ceo/breeds/hound-blood/n02088466_2908.jpg"
)

Dog.create(
  name: "Shadow",
  breed: "Elkhound",
  age: 2,
  photo_url: "https://images.dog.ceo/breeds/elkhound-norwegian/n02091467_3862.jpg"
)

Dog.create(
  name: "Yoda",
  breed: "Tervuren",
  age: 3,
  photo_url: "https://images.dog.ceo/breeds/tervuren/yoda_in_garden.jpg"
)

puts "✅ Done seeding!"

puts "🌱 Seeding groomers..."

Groomer.create(name: "Johnny")
Groomer.create(name: "Moira")
Groomer.create(name: "David")

puts "✅ Done seeding!"

puts "🌱 Seeding services..."

Service.create(
  name: "Complete Grooming Service",
  description: "Haircut, bath, paw cleanse, and ear cleaning",
  cost: 100
)

Service.create(
  name: "Haircut",
  description: "A haircut to keep your dog looking fresh",
  cost: 40
)

Service.create(
  name: "Bath",
  description: "Just a bath to get your dog clean",
  cost: 40
)

Service.create(
  name: "Paw Cleanse",
  description: "Thorough paw cleaning and nail trim",
  cost: 20
)

Service.create(
  name: "Ear Cleanse",
  description: "A quick ear cleanse",
  cost: 15
)

puts "✅ Done seeding!"

puts "🌱 Seeding appointments..."

Appointment.create(
  dog_id: 1,
  groomer_id: 3,
  appt_start_datetime: "07/20/22 10:00",
  appt_end_datetime: "07/20/22 10:30",
  service_id: 1
)

Appointment.create(
  dog_id: 2,
  groomer_id: 2,
  appt_start_datetime: "07/20/22 10:00",
  appt_end_datetime: "07/20/22 10:30",
  service_id: 2
)

Appointment.create(
  dog_id: 3,
  groomer_id: 1,
  appt_start_datetime: "07/20/22 10:00",
  appt_end_datetime: "07/20/22 10:30",
  service_id: 3
)

puts "✅ Done seeding!"