class Member < ActiveRecord::Base
  validates :firstname, presence: true
  attachment :photo
  # include PublicActivity::Model
  # tracked owner: Proc.new { |controller, model| controller.current_user ? controller.current_user : nil }
  geocoded_by :entire_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  scope :created_between, lambda {|start_date, end_date| where("date_received >= ? AND date_received <= ?", start_date, end_date )}
end
