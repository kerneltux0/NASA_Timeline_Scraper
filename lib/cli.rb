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
      when "2"
        puts "Reversing the polarity of the neutron flow."
      when "menu"
        main_menu
      else
        puts "Invalid input, please try again."
      end
    end

  end

  def goodbye
    puts "Thank you for checking out a snapshot of NASA's history!"

  end

  
end