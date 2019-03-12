# Goals
- Sinatra is a DSL, sits on top of Ruby and Rack to give us extra functionality and abstraction
- Explain the Model View Controller (MVC) pattern and give an example
- Explain how web frameworks (like Sinatra) use the MVC pattern and why

# Model
- connects with our database
- wrap a table in a database or an API

# View
- what we see in the browser
- html representation of our data

# Controller
- directs request

# Map REST to CRUD
- REpresentational State Transfer

Create
- new => GET /books/new => form to make a new book
- create => POST /books => make a new book

Read
- index => GET /books => show all books
- show => GET /books/:id => show a single books

Update
- edit => GET /books/:id/edit => form to edit book information
- update => PATCH/PUT /books/:id => update a book
  - PUT updates the entire resource
  - PATCH updates select attributes

Destroy
-  delete => DELETE /books/:id => removes a book

- Define 'convention over configuration'
- Implement one model that inherit from ActiveRecord
- Implement one controller to route and process requests
- Demonstrate how the params hash changes and where the data comes from
- Implement ERB template and get it to render data from controller and model
- Practice file structure in Sinatra
- Identify the connection between REST and CRUD
