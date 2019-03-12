require 'bundler/setup'

Bundler.require

require 'pry'

require_relative "../lib/course"
require_relative "../lib/student"
require_relative "sql_runner"

@db = SQLite3::Database.new('../enrollment2.db')
@db.execute("DROP TABLE IF EXISTS courses;")
@db.execute("DROP TABLE IF EXISTS students;")
@sql_runner = SQLRunner.new(@db)
@sql_runner.execute_schema_migration_sql
