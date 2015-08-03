require 'open-uri'
require 'nokogiri'


#Store URL to be scraped

uri = URI.parse('https://secure.thameswater.co.uk/dynamic/cps/rde/xchg/corp/hs.xsl/Thames_Water_Supply.xml')


https = Net::HTTP.new(uri.host,uri.port)
https.verify_mode = OpenSSL::SSL::VERIFY_NONE
https.use_ssl = true

# we need to define a Post object and send the postcode to search
req = Net::HTTP::Post.new(uri.path)
req.set_form_data('postcode1' => 'NW1W 9BE')

# do the post
result = https.request(req)

supplied = 'http://www.thameswater.co.uk/your-account/605_5460.htm'
not_supplied = 'http://www.thameswater.co.uk/your-account/605_5459.htm'

# evaluates the post result
if result.header['Location'] == supplied
  puts 'Your property is in our supply area'
elsif result.header['Location'] == not_supplied
  puts 'Sorry, we cant find your postcode'
end
