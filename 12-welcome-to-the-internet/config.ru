# To use Rack, provide an "app":
  # - it is an object that responds to the call method
  # - it takes the environment hash as a parameter
  # - it returns an Array with three elements:
  #   - The HTTP response code
  #   - A Hash of headers
  #   - The response body, which must respond to each => an array!

require 'rack'
require 'pry'
require 'shotgun'

class App

  def call(environment_hash)
    req = Rack::Request.new(environment_hash)
    resp = Rack::Response.new
    if req.path == '/'
      resp.write('Welcome to Flatiron')
    # elsif req.path == '/seattle'
    #   resp.write('Welcome to Flatiron Seattle Campus')
    # elsif req.path == '/denver'
    #   resp.write('Welcome to Flatiron Denver Campus')
    # elsif req.path == '/london'
    #   resp.write('Welcome to Flatiron London Campus')
    # elsif req.path == '/dc'
    #   resp.write('Welcome to Flatiron DC Campus')
    # elsif req.path == '/dumbo'
    #   resp.write('Welcome to Flatiron Dumbo Campus')
    else
      open_campuses = ['Seattle', 'London', 'Dumbo', 'New York']
      location = req.path.gsub('/', '').split('-').map(&:capitalize).join(' ')
      if open_campuses.include?(location)
        resp.write("Welcome to Flatiron #{location} Campus")
      else
        resp.status = 400
      end
    end
      resp.finish
    # ['200', {'Content-Type' => 'text/html'}, ['is this a response?']]
  end

end

run App.new
