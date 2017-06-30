require 'pry'

class Currency
  attr_accessor :name, :to_dollars, :inverse
  @@all = []


  def initialize 
    @name = name
    @to_dollars = to_dollars
    @inverse = inverse
  end# of initialize


  def self.all
    @@all 
  end# of self.all


  def self.create
    html = Scraper.get_page
    unit = html.css("table.tablesorter.ratesTable tr")
    unit.each do |data|
      currency = Currency.new
      currency.name = data.css("td:nth-child(1)").text
      currency.to_dollars = data.css("td:nth-child(2)").text
      currency.inverse = data.css("td:nth-child(3)").text
      @@all << currency
    end# of do 
  end# of self.create


  def self.list
    list = []
    self.all.each do |currency|
      list << currency.name
    end# of do
    list.sort.each do |currency_name|
      puts currency_name
    end# of do
  end# of self.list


def self.find_by_name(input)
  self.all.find {|currency| currency.name.downcase == input.downcase}
end# of self.find_by_name


end# of currency