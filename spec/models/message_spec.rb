describe Message do
  it "doesn't save the message if twilio returns an error" do
    message = Message.new(:body => 'yo', :to => '1234567', :from => '2677145108')
    message.save.should be false
  end
  it "saves the message if twilio does not return an error" do
    message = Message.new(:body => 'nacho', :to => '4084708150', :from => '2677145108')
    message.save.should be true
  end

end
