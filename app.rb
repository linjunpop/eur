require 'sinatra'
require 'open-uri'
require 'nokogiri'

get '/' do
  doc = Nokogiri::HTML(open('http://www.boc.cn/sourcedb/whpj/enindex.html'))
  @buying_rate = doc.xpath('/html/body/table[2]/tr/td[2]/table[2]/tr/td/table/tr[6]/td[2]').text()

  erb :index
end
