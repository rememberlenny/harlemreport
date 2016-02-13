class Guest < ActiveRecord::Base
  validates :firstname, presence: true
  attachment :profile_image
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }
end
