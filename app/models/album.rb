class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  validates :name, presence: true
  # same year validation as in the artists model
  validates :year, presence: true, :inclusion => 1900..2017
end
