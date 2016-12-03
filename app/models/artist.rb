class Artist < ActiveRecord::Base
	has_many :albums, dependant: :destroy
	validates :name, presence: true
	# validation to ensure the year is not an unrealistic value - so must be between 1900 to 2017
	validates :year, presence: true, :inclusion => 1900..2017
end
