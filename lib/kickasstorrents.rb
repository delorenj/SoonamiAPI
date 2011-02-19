require 'rubygems'
require 'nokogiri'
require 'open-uri'

class KickAssTorrents
  def initialize
    @baseurl = "http://www.kickasstorrents.com"
    @modifier = "/search/"
    @candidates = Array.new
  end

  def query(key)
    @candidates.clear
    @doc = Nokogiri::HTML(open(@baseurl + @modifier + key))
    result = Array.new
    @doc.css('div.torrentname').each do |result|
      @candidates.push(result.children[1].attr("href"))
    end
    @candidates
  end

  def candidates
    @candidates
  end

  def geturl(candidate)
    doc = Nokogiri::HTML(open(@baseurl + candidate))
    doc.at_css("div#threeButs").children[1].attr("href")
  end
end
