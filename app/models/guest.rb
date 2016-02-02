class Guest < ActiveRecord::Base
  validates :firstname, :contact_person, :last_meeting, presence: true
  attachment :photo
end
