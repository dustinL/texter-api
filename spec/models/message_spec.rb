describe Message do
  it "doesn't save the message if twilio returns an error" do
    message = Message.new(:body => 'yo', :to => '1234567', :from => '2677145108')
    message.save.should be false
  end

end
