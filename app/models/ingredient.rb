class Ingredient < ApplicationRecord
	belongs_to :recipe, optional: true
	
	validates_presence_of :name, :description
	validates :name, length: { maximum: 20 }
	validates :description, length: { maximum: 200 }
end
