# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Company Type

Company.create(title: "Interior Designer")
Company.create(title: "Sales Rep./Showroom")
Company.create(title: "Retailer")
Company.create(title: "Other")

# Option Type

Option.create(title: "Sales Rep. or Wholesale")
Option.create(title: "Antique Dealer")
Option.create(title: "Vintage Dealer")
Option.create(title: "Manufacturer")
Option.create(title: "Hand-crafted/Artisinal")
Option.create(title: "Interior Designer ")
Option.create(title: "Other/Not Applicable")

# Category Type

Category.create(title: "Seating")
Category.create(title: "Kitchen")
Category.create(title: "Lighting")
Category.create(title: "Rugs")
Category.create(title: "Decor")
Category.create(title: "Outdoor")
Category.create(title: "Soft Goods")
Category.create(title: "Case Goods")

# Channel Type

Channel.create(title: "Direct to Consumer")
Channel.create(title: "Brick and Mortar Store")
Channel.create(title: "Showroom")
Channel.create(title: "Flash Sales Website(s)")
Channel.create(title: "3rd Party e-Commerce Site(s)")
Channel.create(title: "Other")


AdminUser.create!(email: 'admin@tandemarbor.com', password: 'DK87dds', password_confirmation: 'DK87dds')