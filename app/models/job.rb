class Job < ApplicationRecord
	has_many :boats, through: :boatjobs
	has_many :boatjobs
	
	validates :name, uniqueness: { :message => "That job name is already taken"}
	validates :description, :length => { minimum: 50, maximum: 1000, :message => ""}
	validates :cost, :numericality => { :greater_than => 1000.00, message:"" }
	validate :origin_location

	def origin_location
	 	locations_array = ["Tokyo", "Los Angles", "Hong Kong", "Sydney", "Portland", "New York"]
	 	if !locations_array.include? destination or !locations_array.include? origin
	 		errors.add(:location, "This is not a valid location") 
	 	end
	 end 
end
