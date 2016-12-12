class Artist < ActiveRecord::Base
	has_many :albums, dependent: :destroy
	validates :name, presence: true
	# validation to ensure the year is not an unrealistic value - so must be between 1900 to the current year
	validates :year, presence: true, :inclusion => 1900..Time.now.year
end
