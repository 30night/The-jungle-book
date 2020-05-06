class Animal < ApplicationRecord
  belongs_to :species, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
