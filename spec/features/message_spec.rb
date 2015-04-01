# FEATURES SPEC
require 'rails_helper'

describe Message, :vcr => true do
  it 'does not save the message if twilio gives an error' do
    message = Message.new(:body => 'heyo', :to => '1111111', :from => '5623750778')
    message.save.should be false
    # expect(message.save).to be false
  end

  it 'adds an error if the to number is invalid' do
    message1 = Message.new(:body => 'heyo', :to => '1111111', :from => '5623750778')
    # message1 = FactoryGirl.create(:message, :to => '1111111')
    message1.save
    message1.errors.messages[:base].should eq ["The 'To' number 1111111 is not a valid phone number."]
  end
end
