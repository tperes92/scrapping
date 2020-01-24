require 'rubygems'
require 'nokogiri'
require 'open-uri'

def cryptomonnaies
  name= []
  price= []
  array=[]
  hash = Hash.new
  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

  coin = page.xpath('//tr/td[3]/div').each do |n|
  name << n.text
  end
  value = page.xpath('//tr/td[5]/a').each do |p|
  price << p.text.to_f
  end
  hash=name.zip(price)
  hash.each do |h|
  array << {h[0] => h[1]}
  end
  return array
  end
  cryptomonnaies