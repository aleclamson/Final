require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('http://www.onthesnow.com/colorado/skireport.html')

puts page.at('.review-page table .name').text

#http://readysteadycode.com/howto-scrape-websites-with-ruby-and-mechanize