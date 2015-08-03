require 'open-uri'
require 'nokogiri'


#Store URL to be scraped

uri = URI.parse('https://secure.thameswater.co.uk/dynamic/cps/rde/xchg/corp/hs.xsl/Thames_Water_Supply.xml')


https = Net::HTTP.new(uri.host,uri.port)
https.verify_mode = OpenSSL::SSL::VERIFY_NONE
https.use_ssl = true

