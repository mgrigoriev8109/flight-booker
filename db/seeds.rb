# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create([{ name: "San Francisco", code: "SFO" }, { name: "New York", code: "NYC" }])

Flight.create!([
  {departing_airport: Airport.find_by!(code: "SFO"),
  arriving_airport: Airport.find_by!(code: "NYC"),
  start: DateTime.new(2023,12,3),
  duration_minutes: 330 },
  {departing_airport: Airport.find_by!(code: "NYC"),
  arriving_airport: Airport.find_by!(code: "SFO"),
  start: DateTime.new(2023,12,4),
  duration_minutes: 330 }]
)
