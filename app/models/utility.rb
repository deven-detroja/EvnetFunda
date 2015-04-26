module  Utility
# Get twilio-ruby from twilio.com/docs/ruby/install
require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'
 
# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC9955b5b36a1cb4d5380bdf2179a7839d'
auth_token = '89ec4241e84d0be1c97796a707f17340'
@client = Twilio::REST::Client.new account_sid, auth_token

jagdish="+919167622130"
deven="+917506416428"
 
sms = @client.account.sms.messages.create(:body => "All in the game, yo",
    :to => deven,
    :from => "+15005550006")
puts sms.body
end