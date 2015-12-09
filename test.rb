require 'mechanize'
class Test
	def initialize
		@agent = Mechanize.new
		@resort_name = @agent.get('http://www.onthesnow.com/colorado/skireport.html').search("tr.rowB")
		@snow = @agent.get('http://www.onthesnow.com/colorado/skireport.html').search("td.rMid.c")
		@long_array = []
		
	end
		
	
	def do_stuff
		name_snow(@resort_name[0], @snow[2])
		name_snow(@resort_name[4], @snow[10])
		name_snow(@resort_name[5], @snow[12])
		name_snow(@resort_name[6], @snow[14])
		name_snow(@resort_name[10], @snow[22])

		puts @long_array
	end

	def name_snow name, snow
		small_array = []
		small_array.push(snow.search('b').text)
		small_array.push(name.search('.name').text)
		@long_array.push(small_array)
	end

end

test = Test.new
test.do_stuff


# prints vail
# print resort_name[4].search('.name').text
# print" "
# puts vail_snow = snow[10].search('b').text	

	