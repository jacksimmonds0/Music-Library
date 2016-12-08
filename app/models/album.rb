class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :songs, dependent: :destroy
  validates :name, presence: true
  # same year validation as in the artists model
  validates :year, presence: true, :inclusion => 1900..2017

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type:  /\Aimage\/.*\Z/

  # method to get the total number of songs for the tracks in the album
  def total_songs
  	self.songs.size
  end
end
