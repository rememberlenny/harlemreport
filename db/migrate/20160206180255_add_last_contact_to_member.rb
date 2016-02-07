class AddLastContactToMember < ActiveRecord::Migration
  def change
    add_column :members, :last_contact, :date
  end
end
