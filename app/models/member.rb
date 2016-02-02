class Member < ActiveRecord::Base
  validates :firstname, :sponsor_name, presence: true
  attachment :photo
end
