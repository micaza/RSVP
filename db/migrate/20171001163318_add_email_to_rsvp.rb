class AddEmailToRsvp < ActiveRecord::Migration[5.1]
	def change
		add_column :rsvps, :email, :string
	end
end
