class Genre < ActiveRecord::Base
	validates :genre, presence: true
end
