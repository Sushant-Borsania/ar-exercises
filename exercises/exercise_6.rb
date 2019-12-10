require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Mahadev", last_name: "Shiv", hourly_rate: 70)
@store1.employees.create(first_name: "Michael", last_name: "Jackson", hourly_rate: 50)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 80)
@store2.employees.create(first_name: "Ashish", last_name: "Smith", hourly_rate: 70)
@store2.employees.create(first_name: "Christopher", last_name: "Gueiss", hourly_rate: 50)