class Address < ActiveRecord::Base
	# model validation we can also used for other coloum
	validates :street, presence: true
  validates :city, presence: true
	# search method by sq_ft
	def self.search(search)
  	where("sq_ft LIKE ? ", "%#{search}%") 
	end		
end