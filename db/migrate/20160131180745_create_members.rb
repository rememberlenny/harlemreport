class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :firstname
      t.string :lastname
      t.date :date_received
      t.string :zone
      t.string :region
      t.string :chapter
      t.string :district
      t.string :sponsor_name
      t.boolean :enshrined
      t.boolean :district_connected
      t.string :contact_person
      t.text :note

      t.timestamps
    end
  end
end
