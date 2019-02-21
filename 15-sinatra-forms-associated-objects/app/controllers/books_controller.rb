class BooksController < ApplicationController
  set :views, 'app/views/books'

  # index => shows all books
  get '/books' do
    @books = Book.all
    erb :index
  end

  # creating a new book
  get '/books/new' do
    @authors = Author.all
    erb :new
  end

  post '/books' do
    # {title: '', author: '', snippet: ''}
    Book.create(params)
    redirect '/books'
  end

  #editing a book
  get '/books/:id/edit' do
    @book = Book.find(params[:id])
    erb :edit
  end

  patch '/books/:id' do
    book = Book.find(params[:id])
    # book.title = params[:title]
    # book.save
    book_params = params.reject{|k, v| k == '_method'}
    book.update(book_params)
    redirect "/books/#{book.id}"
  end

  # show => shows a single book
  get '/books/:id' do
    id = params[:id]
    @book = Book.find(id)
    erb :show
  end

  # delete a book
  delete '/books/:id' do
    book = Book.find(params[:id])
    book.delete
    redirect '/books'
  end

end
