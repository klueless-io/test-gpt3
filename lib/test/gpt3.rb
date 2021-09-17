# frozen_string_literal: true

require 'test/gpt3/version'

module Test
  module Gpt3
    # raise Test::Gpt3::Error, 'Sample message'
    class Error < StandardError; end

    # Your code goes here...
  end
end

if ENV['KLUE_DEBUG']&.to_s&.downcase == 'true'
  namespace = 'TestGpt3::Version'
  file_path = $LOADED_FEATURES.find { |f| f.include?('test/gpt3/version') }
  version = Test::Gpt3::VERSION.ljust(9)
  puts "#{namespace.ljust(35)} : #{version.ljust(9)} : #{file_path}"
end
