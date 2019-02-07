require 'bundler'
Bundler.require

DB = {
  conn: SQLite3::Database.new('db/task_listr.db')
}

DB[:conn].results_as_hash = true

require_relative '../lib/task.rb'
require_relative '../lib/tasks_app.rb'