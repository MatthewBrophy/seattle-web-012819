class AuthorsController < ApplicationController
  set :views, 'app/views/authors'

  # index => shows all authors
  get '/authors' do
    @authors = Author.all
    erb :index
  end


end
