require 'mechanize'
	
	mechanize = Mechanize.new
	# place = mechanize.get('http://www.onthesnow.com/colorado/skireport.html')
	# page = mechanize.get('http://www.onthesnow.com/colorado/skireport.html')

	
	# puts page.at('.rowB .rLeft .name').text
	# puts place.at('.rowB .rMid.c b').text

	#http://readysteadycode.com/howto-scrape-websites-with-ruby-and-mechanize
	#http://jsoup.org/cookbook/extracting-data/selector-syntax


place = mechanize.get('http://www.onthesnow.com/colorado/skireport.html')
page = mechanize.get('http://www.onthesnow.com/colorado/skireport.html')
puts place.at('.rowB .rLeft .name').text
puts page.at('.rowB .rMid.c b').text
	