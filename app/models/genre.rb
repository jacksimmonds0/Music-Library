class Genre < ActiveRecord::Base
	has_many :albums, dependant: :destroy
	validates :genre, presence: true
end
