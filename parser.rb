class Parser

  def initialize(log)
    # It must take a log file as an argument
    unless log && File.exists?(log)
      raise ArgumentError('You must specify a valid logfile')
    end

    @logs = File.readlines(log)
  end

  def most_page_views
    # tally up each line by the first argument, the page
    grouped = @logs.map { |log| log.split.first }.tally
    ordered = grouped.sort { |a,b| b.last <=> a.last }
  end

  def most_unique_pages
    # tally up logs with a unique page and source IP
    ordered = @logs.map(&:strip).tally.sort { |a,b| b.last <=> a.last }
  end
end
