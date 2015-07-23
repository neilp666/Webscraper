require 'open-uri'
require 'nokogiri'

#store URL to be scraped
#test url = "https://www.airbnb.com/s/Brooklyn--NY--United-States"


#affintity water URL
url = "https://www.affinitywater.co.uk/our-supply-area-moving-home.aspx"


#thames water URL

#http://www.thameswater.co.uk/your-account/605_5459.htm

url = "http://www.thameswater.co.uk/your-account/605_5459.htm"

# Parse the page with Nokogiri
result = Nokogiri::HTML(open(url))


# Display output onto the screen
puts result



