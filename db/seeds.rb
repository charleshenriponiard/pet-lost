# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying pets"
Pet.destroy_all
puts "initialize seed"

Pet.create(name:"Lily", species:"cat", address:"au hasard", found_on: Date.today - 2)
Pet.create(name:"Michel", species:"dog", address:"on sen bat", found_on: Date.today - 3)
puts "ok cest cool"
