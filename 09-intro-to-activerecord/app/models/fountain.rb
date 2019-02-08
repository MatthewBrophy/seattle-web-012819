class Fountain < ActiveRecord::Base
  has_many :wishes
  # .new creates ONLY an instance

  # #save saves that instance to DB

  # .create creates the instance AND saves it to DB

  # you can use attr_writers to update the RUBY OBJECT,
  #   but you must remember to save it!!

  # #update both changes the instance itself AND updates the DB

  # #delete deletes the corresponding row in DB, BUT NOT the instance itself
end