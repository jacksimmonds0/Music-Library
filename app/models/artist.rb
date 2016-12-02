class Artist < ActiveRecord::Base
	validates :name, presence: true
	validates :year, presence: true, :inclusion => 1900..2017
end
