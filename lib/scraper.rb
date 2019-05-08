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

class NASATimelineScraper::ScrapePage
  def self.scrape(url)
    nasaSite = Nokogiri::HTML(open(url))
    nasaSite.css("li.media.event").each do |events|
      site = "https://worldhistoryproject.org"
      headline = events.css("h3").text.strip
      date = events.css("time").text.strip
      page = events.css("a").attribute("href").value
      site << page
      NASATimelineScraper::Events.new(headline, date, site)
    end
  end
end