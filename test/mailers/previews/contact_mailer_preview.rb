# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

	def contact_email
		ContactMailer.contact_email("jacksimmonds0gmail.com", "Jack Simmonds", "1234567890", @message = "Hello")
	end
end
