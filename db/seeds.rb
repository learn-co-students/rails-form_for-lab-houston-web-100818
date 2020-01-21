# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
Student.create(first_name: "Megan", last_name: "Farley")
Student.create(first_name: "William", last_name: "Martin")

SchoolClass.destroy_all
SchoolClass.create(title: "Biology", room_number: 401)
SchoolClass.create(title: "Geometry", room_number: 100)