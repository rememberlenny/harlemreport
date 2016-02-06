class AddDivisionToMember < ActiveRecord::Migration
  def change
    add_column :members, :division, :string
  end
end
