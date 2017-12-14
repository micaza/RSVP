class AddCityToRsvp < ActiveRecord::Migration[5.1]
  def change
  	add_column :rsvps, :city, :string
  end
end
