class Song < ActiveRecord::Base
  belongs_to :album
  validates :name, presence: true
  validates :duration, presence: true
  validates_format_of :duration, :with => /\A(?:([0-5]?\d):)?([0-5]?\d)\z/
end
