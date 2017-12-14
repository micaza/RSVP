class AddAddressToRsvp < ActiveRecord::Migration[5.1]
  def change
  	add_column :rsvps, :street, :string
  	add_column :rsvps, :street2, :string
  	add_column :rsvps, :zip, :string
  	add_column :rsvps, :state, :string
  	remove_column :rsvps, :phone
  end
end
