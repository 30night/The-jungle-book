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
  description: "The mandarin fish (Synchiropus splendidus) swims in the south-west Pacific Ocean close to Australia, Taiwan, and the Philippines. Its array of color is similar to that of the robes worn by an Imperial Chinese mandarin or bureaucrat. The blue color comes from a cellular pigment that is unique to the species. The mandarin fish is only 6 cm long. It dwells in secluded lagoons and reefs, eating small crustaceans."},
  {
  name: "Highland Cow",
  species_id: 1,
  user_id: 2,
  habitat: "Wet & Mountainous Grasslands",
  description: "The animal is native to Scotland, although currently found throughout Europe, North America as well as Australia. These fluffy brown cows are famous for their long, pointed horns and their floppy hair. These animals have an interesting look that sets them apart from all other cow breeds."},
  {
  name: "Blue-Footed Booby",
  species_id: 1,
  user_id: 3,
  habitat: "Subtropical & Tropical Regions of Eastern Pacific Ocean",
  description: "Blue-footed boobies are named after their bright blue feet. The birds’ feet are so blue because the carotenoid pigments that they get through their food are concentrated in their feet."},
  {
  name: "Sea Turtle",
  species_id: 1,
  user_id: 1,
  habitat: "Open Water and Coasts",
  description: "Endangered, Seven different species of sea (or marine) turtles grace our ocean waters, from the shallow seagrass beds of the Indian Ocean, to the colorful reefs of the Coral Triangle and the sandy beaches of the Eastern Pacific. While these highly migratory species periodically come ashore to either bask or nest, sea turtles spend the bulk of their lives in the ocean. Over the last 200 years, human activities have tipped the scales against the survival of these ancient mariners. Slaughtered for their eggs, meat, skin, and shells, sea turtles suffer from poaching and over-exploitation. Climate change has an impact on turtle nesting sites; it alters sand temperatures, which then affects the sex of hatchlings."}
]) 
puts "Added #{animal.count} animals, woop woop"
