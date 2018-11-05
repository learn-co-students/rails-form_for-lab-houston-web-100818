# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
school1 = SchoolClass.create(title: 'title1', room_number: '5')
school2 = SchoolClass.create(title: 'title2', room_number: '6')

student1 = Student.create(first_name: 'bilikis', last_name: 'oru')
student2 = Student.create(first_name: 'rahman', last_name: 'oru')