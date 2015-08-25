# post_message.rb
require "net/http"
require 'uri'

puts ""
print "Who do you want to message? "
to = gets.chomp
print "Who are you? "
from = gets.chomp

print "Your message: "
content = gets.chomp

puts ""
print "Sending message..."

uri = URI("http://localhost:9393")

response = Net::HTTP.post_form(uri, 'to' => to, 'from' => from, 'content' => content)

if response.message == "OK"
 puts "It worked :)"
else
 puts "Oops, something went wrong :("
end

puts ""
