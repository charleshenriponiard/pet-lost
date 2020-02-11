class Pet < ApplicationRecord
  SPECIES = ["cat", "dog", "bird"]
  validates :species, inclusion: { in: SPECIES }
end
