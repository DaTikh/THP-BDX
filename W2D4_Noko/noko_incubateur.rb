require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'yaml'

page = Nokogiri::HTML(open("http://www.mon-incubateur.com/site_incubateur/incubateurs"))
