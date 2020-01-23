require 'rubygems'
require 'nokogiri'
require 'open-uri'

def mairie
  marie_mail= []
  hash = Hash.new
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/40/seignosse.html/"))

  mairie_mail = page.xpath('//a[contains(@href, "mailto")]')
  mairie_mail.each do |email|
  puts email.text
  end
  
end
mairie

 