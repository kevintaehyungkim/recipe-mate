class Recipe < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  # has_one :image, :as => :imageable

  validates_presence_of :name, :description, :instruction, :time
  # validates :name, length: { maximum: 20 }
  # validates :description, length: { maximum: 200 }
  # validates :instruction, length: { maximum: 500 }

  def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end

end