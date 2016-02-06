class AddDivisionToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :division, :string
  end
end
