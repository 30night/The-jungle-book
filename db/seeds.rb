# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all 

puts 'Adding users...'
user = User.create([
  {
    email: "e@gmail.com",
    password: "111111"
  },
  {
    email: "h@gmail.com",
    password: "111111"
  },
  {
    email: "p@gmail.com",
    password: "111111"
  }
])
puts "Added #{user.count} users"

# Species.destroy_all 

puts 'Adding species...'
species = Species.create(species_type: "Universal")
puts "Added species"

# Animal.destroy_all 

puts 'Adding animals'
animal = Animal.create([
  {
  name: "Mandarin Fish",
  species_id: 1,
  user_id: 1,
  habitat: "South Pacific Ocean",
  description: "The mandarin fish (Synchiropus splendidus) swims in the south-west Pacific Ocean close to Australia, Taiwan, and the Philippines. Its array of color is similar to that of the robes worn by an Imperial Chinese mandarin or bureaucrat. The blue color comes from a cellular pigment that is unique to the species. The mandarin fish is only 6 cm long. It dwells in secluded lagoons and reefs, eating small crustaceans."}
]) 
puts "Added #{animal.count} animals, woop woop"
