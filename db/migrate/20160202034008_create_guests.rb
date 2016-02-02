class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :firstname
      t.string :lastname
      t.string :status
      t.date :last_meeting
      t.string :sponsor_name
      t.date :last_contact
      t.string :contact_person
      t.text :note

      t.timestamps
    end
  end
end
