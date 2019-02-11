# Here's your CLI class! I've included some starter code so you
#   can get a sense on how you might use it! Remember: this
#   class doesn't represent anything in your databse: it's
#   here simply to encapsulate your CLI methods!

# Pro-tip: think about how you might use class and instance 
#   variables in a class like this!

require 'rest-client'
require 'pry'
require 'json'

REDDIT_URL = "http://reddit.com/.json"
BOOKS_URL = "https://www.googleapis.com/books/v1/volumes?q="

class CLI
  def initialize
    puts "Initializing new CLI"
  end

  def main_menu
    is_running = true
    while is_running
      puts "What do you want to do?"
      puts "0. exit"
      puts "1. browse reddit"
      puts "2. search for books"
      answer = gets.chomp.downcase
      puts

      if answer.length < 1
        puts "Incorrect choice."
      elsif answer.first == "0"
        is_running = false
      elsif answer.first == "1"
        browse_reddit
      elsif answer.first == "2"
        search_for_books
      else
        puts "Incorrect choice."
      end
      puts
    end
  end

  def browse_reddit
    puts "Let's checkout reddit!"
    response = RestClient.get(REDDIT_URL)
    json = JSON.parse(response.body)
    json["data"]["children"].each_with_index do |post, index|
      puts "#{index}. " + post["data"]["title"]
    end
    puts
  end

  def search_for_books
    puts "Search for a book:"

    query = gets.chomp.downcase
    puts

    response = RestClient.get(BOOKS_URL + query)
    json = JSON.parse(response.body)
    json["items"].each_with_index do |book, index|
      title = book["volumeInfo"]["title"]
      authors = book["volumeInfo"]["authors"]
      puts "#{index}. " + title
      puts "by #{authors.join(',')}"
      puts
    end
  end
end

