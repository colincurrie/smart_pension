class Parser

  def initialize(log)
    # It must take a log file as an argument
    unless log && File.exists?(log)
      raise ArgumentError('You must specify a valid logfile')
    end
  end

  def most_page_views
    # tally up each line by the first argument
    []
  end

  def most_unique_pages
    # not sure what is meant here, unique page and IP combination?
    []
  end
end
