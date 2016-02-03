class AddLineOrg < ActiveRecord::Migration
  def change
    add_column :guests, :chapter, :string
    add_column :guests, :district, :string
  end
end
