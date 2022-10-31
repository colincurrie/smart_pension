require 'pry'

require_relative '../parser.rb'

describe Parser do

  let(:log)     { 'webserver.log' }
  let(:subject) { Parser.new(log) }

  it 'receives a log as an argument' do 
    expect { Parser.new(log) }.not_to raise_error
  end

  it 'fails if no log is provided' do 
    expect { Parser.new }.to raise_error(ArgumentError)
  end

  describe '#most_page_views' do

    let(:subject) { Parser.new(log).most_page_views }

    it 'puts the most popular page first' do
      # expect the first result to have the highest count
      counts = subject.map(&:last)
      expect(counts.first).to eq(counts.max)
    end

    it 'puts the least popular page last' do
      # expect the last result to have the smallest count
      counts = subject.map(&:last)
      expect(counts.last).to eq(counts.min)
    end
  end

  describe '#most_unique_pages' do

    let(:subject) { Parser.new(log).most_unique_pages }
    let(:counts)  { subject.map(&:last) }

    it 'puts the most unique page first' do
      # expect the most unique page first
      expect(counts.first).to eq(counts.max)
    end

    it 'should put the least unique page last' do
      # expect the least unique page last
      expect(counts.last).to eq(counts.min)
    end
  end
end
