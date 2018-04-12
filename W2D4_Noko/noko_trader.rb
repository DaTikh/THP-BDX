require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'yaml'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
currency = page.css("td.currency-name")

currencies = []
prices = []

  currency.each do |curr|
   curr = curr.to_s.slice!(44..-1)
   cut = curr.index(">")
   curr = curr.slice!(0..(cut-1)).gsub!("\"","")
   currencies << curr
   end
values = page.css("a.price")
  values.each do |val|
  val = values.text
  prices << val
  end
# print currencies
# print prices

print currencies.length
print prices.length
print currencies.product(prices)
