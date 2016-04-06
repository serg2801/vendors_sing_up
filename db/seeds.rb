# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Company Type

Company.create(title: "Brick and Mortar Store")
Company.create(title: "Online Store")
Company.create(title: "Sales Rep./Showroom")
Company.create(title: "Manufacturer")
Company.create(title: "Interior Designer")
Company.create(title: "Other")

#Greeting Type
Greeting.create(name: "Mr.")
Greeting.create(name: "Ms.")
Greeting.create(name: "Mrs.")
Greeting.create(name: "Miss.")

