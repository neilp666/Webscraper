require 'open-uri'
require 'nokogiri'

#store URL to be scraped
#test url = "https://www.airbnb.com/s/Brooklyn--NY--United-States"

#affintity water
#url = "https://www.affinitywater.co.uk/our-supply-area-moving-home.aspx"

#affintity water - search results for AL10 9EZ
url = "https://www.affinitywater.co.uk/index.aspx?pg=79"

# Parse the page with Nokogiri
page = Nokogiri::HTML(open(url))


# Display output onto the screen
puts page



