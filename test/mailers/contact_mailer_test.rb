require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should return contact email" do
	mail = ContactMailer.contact_email("jacksimmonds0gmail.com", "Jack Simmonds", "1234567890", @message = "Hello")

	assert_equal ['info@mynotes.com'], mail.to
	assert_equal ['info@mynotes.com'], mail.from
  end
end
