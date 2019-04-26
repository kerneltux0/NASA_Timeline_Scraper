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

class NASATimelineScraper::Events
  attr_accessor :headline, :date, :description
  @@events = []

  def initialize(headline, date, description)
    @headline = headline
    @date = date
    @description = description
    save

  end
  
  def self.events
    #return instances of events
    @@events
  end

  def save
    @@events << self
  end

  # def add_event(something)

  # end
  
end