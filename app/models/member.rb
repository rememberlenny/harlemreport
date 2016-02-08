class Member < ActiveRecord::Base
  validates :firstname, presence: true
  attachment :photo
  # include PublicActivity::Model
  # tracked owner: Proc.new { |controller, model| controller.current_user ? controller.current_user : nil }
  geocoded_by :entire_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
