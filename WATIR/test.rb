require 'watir'

browser = Watir::Browser.new(:firefox)

browser.goto 'google.com'

search_bar = browser.text_field(class: 'gsfi')
search_bar.set("Tonton du bled")
search_bar.send_keys(:enter)

browser.driver.manage.timeouts.implicit_wait = 5
search_result_divs = browser.divs(class:"rc")
search_result_divs.each { |div| p div.h3.text }

p "Méfait accompli, fermeture du browser"
browser.close
