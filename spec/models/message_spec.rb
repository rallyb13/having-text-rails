require 'rails_helper'

describe Message do
  it 'does not save the message if twilio gives an error' do
    message = Message.new(:body => 'heyo', :to => '1111111', :from => '5623750778')
    message.save.should be false
  end
end
