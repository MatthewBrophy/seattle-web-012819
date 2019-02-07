class Task
	attr_reader :id
	attr_accessor :title, :description
	@@all = []

	def self.all

		all_dem_rows = DB[:conn].execute("SELECT * FROM tasks")

		all_dem_rows.each do |row|
			is_in_array = @@all.any? do |task|
				task.id == row["id"]
			end

			if !is_in_array
				Task.new(row)
			end
		end

		@@all
	end

	# This will ONLY initialize a RUBY object
	# Will NOT persist this data to DB
	def initialize(attributes={})
		@title = attributes['title']
		@description = attributes['description']
		@id = attributes['id']

		@@all << self
	end

	# This will persist data to DB
	def save
		# Fighting SQL injection

		sql = <<-SQL
			INSERT INTO ? (title, description)
			VALUES (?,?);
		SQL

		DB[:conn].execute(sql, self.title, self.description)

		@id = DB[:conn].execute("SELECT * FROM tasks").last["id"]
	end
end