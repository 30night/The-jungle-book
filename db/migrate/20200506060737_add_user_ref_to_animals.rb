class AddUserRefToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_reference :animals, :user, null: false, foreign_key: true
  end
end
