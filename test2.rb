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
		# wp_name = print place.at('.rowB .rLeft .name').text
		# print " "
		#wp_snow = print page.at('.rowB .rMid.c b').text
		# puts "drive time: 20 min"

		# copper_name = print place.at('.rowD .rLeft .name').text
		# print " "
		# copper_snow = print page.at('.rowB .rMid.c b').text

		puts place.at('.rowB').text
		# array.each {|a| puts a }




