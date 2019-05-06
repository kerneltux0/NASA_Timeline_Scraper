# Copyright 2019, Ryan Sise

# This file is part of NASA Timeline Scraper.

# NASA Timeline Scraper is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# NASA Timeline Scraper is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with NASA Timeline Scraper.  If not, see <https://www.gnu.org/licenses/>.

class NASATimelineScraper::ScrapePg1
  #calls on Nokogiri & open-uri to parse years 1957-1983
  def self.scrape_pg1(url)
    nasaSite = Nokogiri::HTML(open(url))
    nasaSite.css("li.media.event").each do |something|
      #headline = something.css("h3").text.strip
      #date = something.css("time").text.strip
      binding.pry
    end
  end
  
end

class NASATimelineScraper::ScrapePg2
  #calls on Nokogiri & open-uri to parse years 1986-2012

  def self.scrape_pg2(url)
    nasaSite = Nokogiri::HTML(open(url))
  end

end