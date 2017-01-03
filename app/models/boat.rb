class Boat < ApplicationRecord
	belongs_to :user
	has_many :jobs, through: :boatjobs
	has_many :boatjobs

	validates :name, uniqueness: { :message => "That boat name is already taken"}
end
