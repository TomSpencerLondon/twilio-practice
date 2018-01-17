require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC831b7544af6b11b9d6891869ab135b61'
auth_token = '381fd427b6d8d6c43f6a24d00c71e1f5'
client = Twilio::REST::Client.new account_sid, auth_token


friend = '+447885758652'

client.messages.create(
  body: "Hey Tom, Monkey party at 6PM. Bring Bananas!",
  to: '+447885758652',
  from: '+441591372023',
  )

puts "Sent message to Tom"
