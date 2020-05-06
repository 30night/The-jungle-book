class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.text :description
      t.text :habitat

      t.timestamps
    end
  end
end
