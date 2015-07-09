require 'pry'
require 'rspec'
require './safe_require'

safe_require 'robot'
safe_require 'item'
safe_require 'weapons'
safe_require 'box_of_bolts'
safe_require 'laser'
safe_require 'plasma_cannon'


RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.order = "random"
end