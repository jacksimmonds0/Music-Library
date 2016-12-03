class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  validates :name, :year presence: true
end
