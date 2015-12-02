require 'mechanize'

a = Mechanize.new

a.get('http://www.onthesnow.com/colorado/skireport.html') do |page|
	page.search('table.ea').search('tr')[-2].search('td').map{ |n| n.text 

puts a