species = %w[Insect Reptile Bird Fish Mammal Primate Amphibian Mollusc]

species.each do |s|
  Species.create(species_type: s)
end