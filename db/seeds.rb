puts "🌱 Seeding dogs..."

Dog.create(
  name: "Droopy",
  breed: "Hound",
  age: 3,
  photo_url: "https://images.dog.ceo/breeds/hound-blood/n02088466_2908.jpg",
  archived: false
)

Dog.create(
  name: "Shadow",
  breed: "Elkhound",
  age: 2,
  photo_url: "https://images.dog.ceo/breeds/elkhound-norwegian/n02091467_3862.jpg",
  archived: false
)

Dog.create(
  name: "Yoda",
  breed: "Tervuren",
  age: 3,
  photo_url: "https://images.dog.ceo/breeds/tervuren/yoda_in_garden.jpg",
  archived: false
)

Dog.create(
  name: "Kita",
  breed: "Akita",
  age: 2,
  photo_url: "https://images.dog.ceo/breeds/akita/Akina_Inu_in_Riga_1.jpg",
  archived: true
)

puts "✅ Done seeding!"

puts "🌱 Seeding groomers..."

Groomer.create(
  name: "Johnny Rose",
  onboarding_date: "2022-04-20",
  offboarding_date: ""
)
Groomer.create(
  name: "Moira Rose",
  onboarding_date: "2021-08-20",
  offboarding_date: "2022-07-20"
)
Groomer.create(
  name: "David Rose",
  onboarding_date: "2019-12-05",
  offboarding_date: ""
)

puts "✅ Done seeding!"

puts "🌱 Seeding services..."

Service.create(
  name: "Complete Grooming Service",
  description: "Haircut, bath, paw cleanse, and ear cleaning",
  cost: 100,
  service_length: 150,
  archived: false
)

Service.create(
  name: "Haircut",
  description: "A haircut to keep your dog looking fresh",
  cost: 40,
  service_length: 60,
  archived: false
)

Service.create(
  name: "Bath",
  description: "Just a bath to get your dog clean",
  cost: 40,
  service_length: 60,
  archived: false
)

Service.create(
  name: "Paw Cleanse",
  description: "Thorough paw cleansing and nail trim",
  cost: 20,
  service_length: 30,
  archived: false
)

Service.create(
  name: "Ear Cleanse",
  description: "A quick ear cleanse",
  cost: 20,
  service_length: 30,
  archived: true
)

puts "✅ Done seeding!"

puts "🌱 Seeding appointments..."

Appointment.create(
  dog_id: 1,
  groomer_id: 3,
  appt_datetime: "2022-08-10T10:00",
  service_id: 1
)

Appointment.create(
  dog_id: 1,
  groomer_id: 1,
  appt_datetime: "2022-08-14T10:00",
  service_id: 2
)

Appointment.create(
  dog_id: 2,
  groomer_id: 3,
  appt_datetime: "2022-08-20T10:00",
  service_id: 2
)

Appointment.create(
  dog_id: 3,
  groomer_id: 2,
  appt_datetime: "2022-07-10T12:00",
  service_id: 3
)

puts "✅ Done seeding!"