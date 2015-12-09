require 'mechanize'
class Test
	def initialize
		@agent = Mechanize.new
		@resort_name = @agent.get('http://www.onthesnow.com/colorado/skireport.html').search("tr.rowB")
		@snow = @agent.get('http://www.onthesnow.com/colorado/skireport.html').search("td.rMid.c")
		
	end
		
	
	def do_stuff
		name_snow(@resort_name[0], @snow[2])
		name_snow(@resort_name[4], @snow[10])
	end

	def name_snow name, snow
		#long_array = []
		print name.search('.name').text
		print" "
		puts snow.search('b').text
	end

end

test = Test.new
test.do_stuff


# prints vail
# print resort_name[4].search('.name').text
# print" "
# puts vail_snow = snow[10].search('b').text	

	