require 'mechanize'
agent = Mechanize.new
b = agent.get('http://www.onthesnow.com/colorado/skireport.html').search("tr.rowB")
puts b[0].search('.name').text


print b[3].search('.name').text

