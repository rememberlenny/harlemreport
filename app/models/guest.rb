class Guest < ActiveRecord::Base
  validates :firstname, presence: true
  attachment :profile_image
end
