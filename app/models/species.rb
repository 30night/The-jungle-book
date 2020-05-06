class Species < ApplicationRecord
  has_many :animals, dependent: :destroy

  # def species_type_list
  #   species_type = 
  # end
end
