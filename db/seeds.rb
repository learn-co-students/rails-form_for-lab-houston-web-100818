# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SchoolClass.destroy_all
Student.destroy_all

school1 = SchoolClass.create(title: "engr", room_number: 11)
student1 = Student.create(:first_name, :last_name)
