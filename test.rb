require 'mechanize'
class Test
	
agent = Mechanize.new
resort_name = agent.get('http://www.onthesnow.com/colorado/skireport.html').search("tr.rowB")
snow = agent.get('http://www.onthesnow.com/colorado/skireport.html').search("td.rMid.c")

#prints winter park
print resort_name[0].search('.name').text
print" "
puts snow[2].search('b').text

#prints vail
print resort_name[3].search('.name').text
print" "
puts snow[8].search('b').text

end

