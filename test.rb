require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('http://www.bbc.com/news')

puts page.at('h3').text