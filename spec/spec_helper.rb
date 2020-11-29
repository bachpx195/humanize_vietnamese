require 'rubygems'
require 'humanize_vietnamese'
require 'rspec'
require 'timeout'
require 'pry'

RSpec.configure do |config|
  config.around(:each) do |example|
    Timeout.timeout(5, &example)
  end
end
