class Member < ActiveRecord::Base
  validates :firstname, presence: true
  attachment :photo
  include PublicActivity::Model
  tracked owner: Proc.new { |controller, model| controller.current_user ? controller.current_user : nil }

end
