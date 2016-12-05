class Genre < ActiveRecord::Base
	has_many :albums, dependent: :destroy
	validates :genre, presence: true
end
