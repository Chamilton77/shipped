class Job < ApplicationRecord
	has_many :boats, through: :boatjobs
	has_many :boatjobs
	
	validates :description, :length => { minimum: 50, maximum: 1000, :message => ""}
	validates :cost, :numericality => { :greater_than => 1000.00, message:"" }
end
