require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'yaml'


# def get_all_the_urls_of_val_doise_townhalls()
  # links_list = []



#### WORKING
def get_all_the_urls_of_val_doise_townhalls()
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    links_list = []
  table_links = page.css("a.lientxt")
  table_links.each do |link|
    links_list << "#{link['href'].sub(/./, "http://annuaire-des-mairies.com")}"
  end
end

def get_the_email_of_a_townhal_from_its_webpage(url)
  mairie_list = {}
  url.each do |url|
    new_page = Nokogiri::HTML(open(url))
    mairie = new_page.css("/html/body/div/main/section[1]/div/div/div/h1").text.gsub(" - ","").gsub!(/[0-9]/, "")
    mairie_mail = new_page.css("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
    mairie_list[mairie] = mairie_mail
  end
end

##### WORKING





#     return mairie_list
# end
#
# print mairie_list

# def get_the_email_of_a_townhal_from_its_webpage(url)
#   new_page = Nokogiri::HTML(open(url))
#   townhal = new_page.css("/html/body/div/main/section[1]/div/div/div/h1").text
#   townhal_mail = new_page.css("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
#   # townhal_hash[townhal] = townhal_mail
#   # final_hash = townhal_hash
# end
#
# def perform
#   townhal_hash = Hash.new
#   get_all_the_urls_of_val_doise_townhalls().each do |url|
#     get_the_email_of_a_townhal_from_its_webpage(url)
#     townhal_hash[@townhal] = @townhal_mail
#   end
#   return townhal_hash
# end

# get_all_the_urls_of_val_doise_townhalls()
# print mairie_list
# File.write('mairie_list.yml', YAML.dump(mairie_list))

# mairies = YAML.load_file('mairie_list.yml')
#
# wesh = mairies.keys.to_a
#
# wesh.each do |w|
# print     w = w.split(" ")
#   end
