# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.destroy_all
Student.destroy_all

i1 = Instructor.create(name: "Professor Snape")
i2 = Instructor.create(name: "Professor McGonagal")
i3 = Instructor.create(name: "Mr Hunter")
i4 = Instructor.create(name: "Coach G")

s1 = Student.create(name: "Placido", major: "CS", age: 30, instructor_id: i4.id)
s2 = Student.create(name: "John", major: "EE", age: 24, instructor_id: i3.id)
s3 = Student.create(name: "Jacob", major: "EE", age: 24, instructor_id: i4.id)
s4 = Student.create(name: "Jingle", major: "EE", age: 24, instructor_id: i2.id)
s5 = Student.create(name: "Heimerschmidt", major: "History", age: 69, instructor_id: i1.id)
s6 = Student.create(name: "Hermione", major: "Witchcraft", age: 26, instructor_id: i2.id)
s7 = Student.create(name: "Spongebob", major: "Driving", age: 30, instructor_id: i3.id)
