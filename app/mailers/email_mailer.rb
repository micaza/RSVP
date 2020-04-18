class EmailMailer < ApplicationMailer
	def notify(party_count, email, name, street, street2, city, zip, state, children_count, song_request, message, will_attend, dietary_restriction)
		@party_count = party_count
		@email = email
		@name = name
		@street = street
		@street2 = street2
		@zip = zip
		@city = city
		@state = state
		@children_count = children_count
		@song_request = song_request
		@message = message
		@will_attend = will_attend
		@dietary_restriction = dietary_restriction
		mail to: 'test@testing.com', subject: 'SOMEONE HAS SUBMITTED A RSVP FORM'
	end
end
