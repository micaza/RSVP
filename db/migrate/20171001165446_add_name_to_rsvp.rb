class AddNameToRsvp < ActiveRecord::Migration[5.1]
	def change
		add_column :rsvps, :name, :string
	end
end
