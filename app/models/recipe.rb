class Recipe < ApplicationRecord
  belongs_to :user
  # has_one :image, :as => :imageable

  validates_presence_of :name, :description, :instruction, :time, :total_rating, :num_ratings
  validates :name, length: { maximum: 20 }
  validates :description, length: { maximum: 200 }
  validates :instruction, length: { maximum: 500 }

  def self.search(search)
	  where("name LIKE ? OR ingredients LIKE ? OR cooking_instructions LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end

end
