class NASATimelineScraper::ScrapePg1
  #calls on Nokogiri & open-uri to parse years 1957-1983
  def self.scrape_pg1(url)
    nasaSite = Nokogiri::HTML(open(url))
  end
  
end

class NASATimelineScraper::ScrapePg2
  #calls on Nokogiri & open-uri to parse years 1986-2012

  def self.scrape_pg2(url)
    nasaSite = Nokogiri::HTML(open(url))
  end

end