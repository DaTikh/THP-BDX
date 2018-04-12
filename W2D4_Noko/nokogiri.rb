require 'rubygems'
require 'nokogiri'
require 'open-uri'


# def get_all_the_urls_of_val_doise_townhalls()
  links_list = []

  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    links_list = []
  table_links = page.css("a.lientxt")
  table_links.each do |link|
    links_list << "#{link['href'].sub(/./, "http://annuaire-des-mairies.com")}"
  end
    # return links_list

  mairie_list = {}
  links_list.each do |url|
    new_page = Nokogiri::HTML(open(url))
    mairie = new_page.css("/html/body/div/main/section[1]/div/div/div/h1").text
    mairie_mail = new_page.css("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
    mairie_list[mairie] = mairie_mail
  end
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
print mairie_list
