class AddMissingToMembers < ActiveRecord::Migration
  def change
    add_column :members, :territory, :string
    add_column :members, :member_uid, :string
    add_column :members, :email, :string
    add_column :members, :phone_primary, :string
    add_column :members, :phone_secondary, :string
    add_column :members, :address, :text
    add_column :members, :state, :string
    add_column :members, :zipcode, :string
    add_column :members, :subscription, :boolean
    add_column :members, :auto_renewal, :boolean
    add_column :members, :sustaining_contributor, :boolean
  end
end
