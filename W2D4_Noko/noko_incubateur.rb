require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'yaml'

# def get_incubator_link()
page = Nokogiri::HTML(open("http://www.alloweb.org/annuaire-startups/annuaire-incubateurs-startups/wai-paris-we-are-innovation-incubateur-bnp-paribas/"))
link = page.css("div.wpb_wrapper p a")

 puts link

# end
#
# get_incubator_link()
