class Guest < ActiveRecord::Base
  validates :firstname, presence: true
  attachment :profile_image
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }
  scope :created_between, lambda {|start_date, end_date| where("last_meeting >= ? AND last_meeting <= ?", start_date, end_date )}
end
