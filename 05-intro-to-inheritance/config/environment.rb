require 'pry'
require_relative "../lib/pet"
require_relative "../lib/mammal"
Dir[File.join(File.dirname(__FILE__), "../lib", "*.rb")].each {|f| require f}

# cat
# dog
# fish
# owner
# pet