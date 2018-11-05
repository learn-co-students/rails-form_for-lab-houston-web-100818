# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
Student.create(first_name: "Barbara", last_name: "Decares")
Student.create(first_name: "Robert", last_name: "Jordan")

Schoolclass.destroy_all
Schoolclass.create(title: "Biology", room_number: 401)
Schoolclass.create(title: "Geometry", room_number: 100)
