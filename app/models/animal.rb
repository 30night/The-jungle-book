class Animal < ApplicationRecord
  belongs_to :species
  belongs_to :user
  has_one :habitat
end
