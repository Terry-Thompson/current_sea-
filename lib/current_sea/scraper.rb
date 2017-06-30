require 'Nokogiri'
require 'open-uri'
require 'pry'

class Scraper

def self.get_page
  html = Nokogiri::HTML(open("http://www.x-rates.com/table/?from=USD&amount=1"))
end# of self.get_page

end# of scraper