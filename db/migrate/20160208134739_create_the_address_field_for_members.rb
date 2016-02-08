class CreateTheAddressFieldForMembers < ActiveRecord::Migration
  def change
    add_column :members, :entire_address, :text
  end
end
