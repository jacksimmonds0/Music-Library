class Song < ActiveRecord::Base
  belongs_to :album
  validates :name, presence: true
  validates :duration, presence: true
  # regular expression to ensure the duration is entered in a correct format - mm:ss
  validates_format_of :duration, :with => /\A(?:([0-5]?\d):)?([0-5]?\d)\z/, on: :create, 
  	:message => I18n.t('incorrect_duration')
end
