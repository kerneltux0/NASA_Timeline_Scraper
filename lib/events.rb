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
    event_1.headline = "Soviet Union Launches Sputnik 2"
    event_1.date = "Nov 3 1957"
    event_1.description = "The Soviet Union went on to launch a series of additional Sputnik satellites. Sputnik 2, for example, carried a dog into space, named Laika...."
    event_1
    #@@events
  end

  def save
    @@events << self
  end

  def add_event(something)

  end
  
end

# test data
# event_1.headline = "Soviet Union Launches Sputnik 2"
# event_1.date = "Nov 3 1957"
# event_1.description = The Soviet Union went on to launch a series of additional Sputnik satellites. Sputnik 2, for example, carried a dog into space, named Laika....