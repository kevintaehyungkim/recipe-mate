class Recipe < ApplicationRecord
  belongs_to :user
  # has_one :image, :as => :imageable

  validates_presence_of :name, :description, :instruction, :time
  # validates :name, length: { maximum: 20 }
  # validates :description, length: { maximum: 200 }
  # validates :instruction, length: { maximum: 500 }

 #  def self.search(search)
	# if search
	#     find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	#   else
	#     find(:all)
	#   end
 #  end

end
