# sql-intro

## SWBATs

* Explain persistence and the need for using SQL
* Define SQL
* Explain the difference between SQLite3 and SQL
* Explore provided data through SQLite Browser
* Perform CRUD actions on a single table
* Perform CRUD actions across related tables

### What is SQL?

SQL stands for Structured Query Language and is a language that allows us to do:

* Store / persist information
* Manipulate that information

SQLite3 is a relational database.

Some specific actions that we can do are CRUD actions, a common acronym we'll see throughout the program, web development, and computing in general:

* Create data
* Read data
* Update data
* Delete data

### Configure SQLite Locally

Run these commands in your terminal to configure SQLite to look a bit
better on your machine.

```bash
echo ".headers on" >> ~/.sqliterc
echo ".mode column" >> ~/.sqliterc
```

Write SQL queries in files and then run the files as input to SQLite.

```
touch 00-select_ten_artists.sql
echo "SELECT * FROM artists LIMIT 10;"
sqlite3 ./chinook.db < 00-select_ten_artists.sql
```

### Practice SQL CRUD

Investigate the schema of the database; the structure of the database. If in the command line, use `.schema`, if in browser, use "Database Structure" tab.

After each challenge, check the database structure to verify that the changes were made successfully.

When you get to problem four, ask students about relationships between tables and cover the definition of relational databases.

### Example SQL CRUD
```SQL
CREATE TABLE cats (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER,
  breed TEXT,
  owner_id INTEGER
);
```

```SQL
INSERT INTO cats (name, age, breed, owner_id)
VALUES ("Maru", 3, "Scottish Fold", 1);
```

```SQL
UPDATE cats
SET name = "Boom"
WHERE name = "Maru";
```

```SQL
DELETE from cats
WHERE owner_id = 14;
```

```SQL
SELECT *
FROM cats
WHERE owner_id = 1;
```

## Challenges

1. Write the SQL to return all of the rows in the artists table?

```SQL

```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL

```

3. Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

```sql

```

4. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql

```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId **169**

```sql

```

6. Check out the [Faker gem](https://github.com/stympy/faker). `gem install faker`, open up irb, run `require 'faker'` and then generate a fake name for yourself using `Faker::Name.name`. How would you update your name in the fans table to be your new name?

   ```sql

   ```

7. Write the SQL to return fans that are not fans of the black eyed peas.

```sql

```

8. Write the SQL to display an artists name next to their album title

```sql

```

9. Write the SQL to display artist name, album name and number of tracks on that album

```sql

```

10. Write the SQL to return the name of all of the artists in the 'Pop' Genre

```sql

```

## BONUS (very hard)

11. I want to return the names of the artists and their number of rock tracks
    who play Rock music
    and have move than 30 tracks
    in order of the number of rock tracks that they have
    from greatest to least

```sql

```

