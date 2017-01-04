class Boat < ApplicationRecord
	belongs_to :user
	has_many :jobs, through: :boatjobs
	has_many :boatjobs

	validates :name, uniqueness: { :message => "That boat name is already taken"}

	has_attached_file :avatar, :styles => 
	{ :medium => "200x200>", :thumb => "100x100>" }, 
	:default_url => "/images/:style/missing.png" 
	validates_attachment_content_type :avatar, 
	:content_type => /\Aimage\/.*\Z/
end
