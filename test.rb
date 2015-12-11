require 'mechanize'
class Test
	def initialize
		@agent = Mechanize.new
		@resort_name = @agent.get('http://www.onthesnow.com/colorado/skireport.html').search("tr.rowB")
		@snow = @agent.get('http://www.onthesnow.com/colorado/skireport.html').search("td.rMid.c")
		@long_array = []
	end
		
	
	def do_stuff
		(0..10).each { |index| name_snow(@resort_name[index], @snow[index*2 + 2])}

		puts @long_array
		puts""
		puts
		best_snow
	end

	def name_snow name, snow
		small_array = []
		small_array.push(snow.search('b').text.to_i)
		small_array.push(name.search('.name').text)
		@long_array.push(small_array)
	end

	def best_snow
		best = @long_array.index(@long_array.max)
		puts "The best snow is #{@long_array[best][1]}"
	end

end

test = Test.new
test.do_stuff


# prints vail
# print resort_name[4].search('.name').text
# print" "
# puts vail_snow = snow[10].search('b').text	

	