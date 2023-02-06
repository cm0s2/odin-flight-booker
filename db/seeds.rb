# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all
Airport.create([
  { name: "Malaga", iata_code: "AGP"},
  { name: "Arlanda", iata_code: "ARN"}
  ])

Flight.delete_all
Flight.create([
  { departure_airport_id: Airport.first.id, arrival_airport_id: Airport.last.id, departure_time: "2023-09-22 11:00:00", duration: 240 },
  { departure_airport_id: Airport.last.id, arrival_airport_id: Airport.first.id, departure_time: "2023-09-30 10:30:00", duration: 244 }
  ])
