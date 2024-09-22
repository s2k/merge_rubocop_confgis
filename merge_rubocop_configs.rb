#! env ruby
# frozen_string_literal: true

require 'yaml'
require 'amazing_print'
require 'active_support'

RUBOCOP_CONFIGS  = 'rubocop_configs.txt'
cop_config_files = File.readlines(RUBOCOP_CONFIGS, chomp: true)

merged_config = {}

cop_config_files.each do |fn|
  puts "Processing: #{fn}"
  current_config = YAML.load_file(fn)
  merged_config.deep_merge!(current_config)
end

puts 'Merged YAML:'
puts merged_config.to_yaml.gsub(%r{^([A-Z][/a-zA-Z]+:)$}, "\n\\1")
