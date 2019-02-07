require_relative "environment"

courses = @db.execute("SELECT * FROM courses;")
puts "courses:"
puts courses
puts 

puts "Get the science course:"
science = Course.find(3, @db)
puts science

binding.pry
# test out your code here!
