class CreateSpecies < ActiveRecord::Migration[6.0]
  def change
    create_table :species do |t|
      t.string :species_type
      t.string :string

      t.timestamps
    end
  end
end
