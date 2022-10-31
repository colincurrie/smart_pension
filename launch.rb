#!/usr/bin/env ruby
# frozen_string_literal: true

require 'pry'

require_relative './parser.rb'

parser = Parser.new(ARGV[0])

# fetch the most popular pages
puts parser.most_page_views.map { |page, views| "#{page} #{views} visits" }

# fetch the most unique pages
puts parser.most_unique_pages.map { |page, views| "#{page} #{views} unique views" }
