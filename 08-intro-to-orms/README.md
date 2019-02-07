# Intro to ORMs (Object Relational Mappers)

## SWBATs

* [ ] Define Object Relational Mapper (ORM)
* [ ] Distinguish between ORM and SQL
* [ ] Demonstrate that ORMs are the pattern connecting scripting languages and databases
* [ ] Explain how the `sqlite` gem works as a driver or wrapper around SQL
* [ ] Implement HEREDOCs to be saved in variables to be executed by SQL driver
* [ ] Perform persistent CRUD actions on two separate models

## Lecture Notes

1. Books and Authors where each book has a single author. Books should have a title

  books
  id | title         | author_id
  ------------------------------
  23 | Hyperion      |  63
  78 | Fall of Endy  |  63
  92 | Heavy         |  73


  authors
  id | name
  -------------
  63 | Dan Simmons
  73 | Kiese Laymon


  Q: Write the SQL to find all books written by a certain author given that author's id

  ```SQL
  SELECT books.title
  FROM books
  JOIN authors
  ON books.author_id = authors.id
  WHERE authors.id = 63
  ```

2. Books and Authors where each book can have one or MULTIPLE authors. Books should have a title and authors should have a name.

  - What type of relationship is this?

  books
  id | title         
  -----------------
  23 | Hyperion      
  78 | Fall of Endy 
  92 | Heavy         


  book_authors
  id | book_id | author_id
  -------------------------
  22 |   23    | 63
  45 |   78    | 63
  69 |   92    | 73
  87 |   78    | 73

  authors
  id | name
  -------------
  63 | Dan Simmons
  73 | Kiese Laymon

  Q. Write the SQL to find all books written by certain author given their name

  ``` SQL
  SELECT books.title
  FROM book_authors
  JOIN authors
  ON book_authors.author_id = authors.id
  JOIN books
  ON book_authors.book_id = books.id
  WHERE authors.name = "Dan Simmons"
  GROUP_BY books.title

  ```

3. Aliens have Populations on Planets -- Build table

  ```
  aliens
  id |  name
  1     'humans'          
  2     'navi'   
  3     'xenomorph'                 
  4     'skrull'            

  populations
  id |  alien_id | planet_id
  1     1             1
  2     4             1
  3     3             2
  4     1             3
  5     2             3
  6     4             4

  planets
  id |  name
  1     Earth
  2     LV-426
  3     Pandora
  4     Hala
  ```

Q: Write the SQL to find all Aliens on Planet "Earth"


```SQL

```


## Object Relational Mapper (ORM)

### CRUD REVIEW

What are the four ways we can interact with Data?

Create:
SQL - CREATE, INSERT
Ruby - Planet.new, .save, .create

Read:
SQL - SELECT
Ruby - attr_readers, .all 

Update:
SQL - UPDATE, ALTER
Ruby - attr_writers

Delete:
SQL - DELETE, DROP
Ruby - [].delete

### Active Record Pattern

- each table in our DB should correspond to a ruby class (Model)
- table is ALWAYS plural and the Model/Class is Singular
- instances of one of those classes are represented as a row in our DB
- each column represents an attribute on each instance

### How to persist Data?


## Code Walkthrough

- bin/run.rb
- config/environment.rb
- Gemfile
- db/task_listr.db
- lib/tasks.rb & lib/tasks_app.rb
- Rake
  - Creating a new rake task

```
A task belongs to a user and has some content - must have user_id

The belongs_to must have a user_id on it

A user has a username, and has many tasks

A task can have many tags and a tag can have many tasks
```

## Review Questions

### CRUD in SQL and Ruby

* What are the 4 ways we can interact with data?
* How do we write these in SQL?
* How do we want to write these in Ruby?
* How do we map these SQL applications to Ruby?

### ORM Pattern

* each table in the db should correspond to our ruby class (models)
* each row represents an instance in the database
* each column represents an attribute for our instances
* why do we need a database? persistence

### One to Many Relationship in SQL

* Foreign key versus primary key
* Which table is the foreign key placed on? (has many or belongs to)
* Show the pain of not putting the foreign key on the child
* Find all books written by a certain author by ID

### Many to Many Relationship in SQL

* how do we implement an author having many books and a book having many authors
* join table having two foreign keys
* write the sql to find all books written by a certain author given their name
* highlight order of writing sql syntax
* another example with tweets and tags

### Selecting and Inserting

* Working with SQLite3 Gem in the console
* class with attributes and initialize method
* write all class method with db execute call
* map results from select * to create new tweet instances
* mass assignment
* adding IDs to mapped instance

### Saving and Updating

* writing the save method
* parameterized queries and database security
* what's the difference between calling new and create?