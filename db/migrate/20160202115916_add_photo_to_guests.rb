class AddPhotoToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :profile_image_id, :string
  end
end
