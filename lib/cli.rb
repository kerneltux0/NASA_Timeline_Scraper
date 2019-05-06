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

class NASATimelineScraper::CLI

  def call
    main_menu
    user_options
    goodbye

  end

  def main_menu
    puts "Welcome to the interactive NASA Timeline!"
    puts "This is the main menu."
    puts "Which year range do you want to know more about?"
    puts "1: 1957 - 1983"
    puts "2: 1986 - 2012"

  end

  def user_options
    puts "Please enter one of the following:"
    puts "The number matching what you want to see"
    puts "'menu' to return to the main menu"
    puts "'list' to see the list"
    puts "'exit' to exit"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "list"
        puts "This is the list"
      when "1"
        puts "Al-onsey!"
        url = "https://worldhistoryproject.org/topics/nasa"
        NASATimelineScraper::ScrapePage.scrape(url)
        second_menu
      when "2"
        puts "Reversing the polarity of the neutron flow."
        url = "https://worldhistoryproject.org/topics/nasa/page/2"
        NASATimelineScraper::ScrapePage.scrape(url)
        second_menu
      when "menu"
        main_menu
      else
        puts "Invalid input, please try again."
      end
    end

  end

  def second_menu
    #iterates through NASATimelineScraper::Events.events & prints list
    puts "Which event do you want to know more about?"
    #opens complete article on that event in user's browser

  end

  def goodbye
    #iterates through NASATimelineScraper::Events.events & prints list
    puts "Thank you for checking out a snapshot of NASA's history!"
    #opens complete article on that event in user's browser

  end

  
end