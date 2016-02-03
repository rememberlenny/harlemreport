class Member < ActiveRecord::Base
  validates :firstname, presence: true
  attachment :photo
end
