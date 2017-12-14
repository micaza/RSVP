class AddPhoneToRsvp < ActiveRecord::Migration[5.1]
  def change
  	 add_column :rsvps, :phone, :string
  end
end
