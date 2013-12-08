require 'sinatra'
require 'open-uri'
require 'nokogiri'

get '/' do
  doc = Nokogiri::HTML(open('http://www.boc.cn/sourcedb/whpj'))
  @selling_rate = doc.xpath('/html/body/table[2]/tr/td[2]/table[3]/tr/td/table/tr[6]/td[4]').text()

  erb :index
end
