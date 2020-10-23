class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  # validates_uniqueness_of :cocktails, :ingredients, scope: [:cocktails, :ingredients]
  validates :cocktail, uniqueness: { scope: :ingredient }
end
