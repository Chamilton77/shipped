class Boat < ApplicationRecord
	belongs_to :user
	has_many :jobs, through: :boatjobs
	has_many :boatjobs

	validates :name, uniqueness: { :message => "That boat name is already taken"}
	validate :origin_location

	def origin_location
	 	locations_array = ["Tokyo", "Los Angles", "Hong Kong", "Sydney", "Portland", "New York"]
	 	if !locations_array.include? location 
	 		errors.add(:location, "This is not a valid location")
	 	end
	 end 

	has_attached_file :avatar, :styles => 
	{ :medium => "200x200>", :thumb => "100x100>" }, 
	:default_url => "/images/:style/missing.png" 
	validates_attachment_content_type :avatar, 
	:content_type => /\Aimage\/.*\Z/
end
