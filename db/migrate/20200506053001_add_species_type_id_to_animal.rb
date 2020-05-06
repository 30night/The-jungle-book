class AddSpeciesTypeIdToAnimal < ActiveRecord::Migration[6.0]
  def change
    add_reference :animals, :species, null: false, foreign_key: true
  end
end
