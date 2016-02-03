class Member < ActiveRecord::Base
  validates :firstname, presence: true
  attachment :photo
  include PublicActivity::Model
  tracked
end
