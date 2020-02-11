class Pet < ApplicationRecord
  SPECIES = ["cat", "dog", "bird"]
  validates :species, inclusion: { in: SPECIES }
  validates :name, presence: true

  def found_days_ago
    "#{self.name} has been found #{(Date.today - self.found_on).to_i} days ago!"
  end
end
