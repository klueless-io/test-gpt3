# frozen_string_literal: true


require 'k_log'
require 'gpt3/version'
require 'gpt3/gpt3_builder'

module Gpt3
  # raise Test::Gpt3::Error, 'Sample message'
  class Error < StandardError; end

  # Your code goes here...
end

if ENV['KLUE_DEBUG']&.to_s&.downcase == 'true'
  namespace = 'Gpt3::Version'
  file_path = $LOADED_FEATURES.find { |f| f.include?('gpt3/version') }
  version = Gpt3::VERSION.ljust(9)
  puts "#{namespace.ljust(35)} : #{version.ljust(9)} : #{file_path}"
end
