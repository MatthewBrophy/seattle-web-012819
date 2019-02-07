class Course
    attr_reader :id, :name, :db

    def initialize(id: 1, name: "Bart Simpson", db: nil)
        @id = id
        @name = name
        @db = db
    end

    def add_student_to_course(student_id, db)
        sql = "INSERT INTO enrollments (student_id, course_id) VALUES (?, ?)"
        @db.execute(sql, student_id, @id)
    end

    def self.save(name, db)
        db.execute("INSERT INTO courses (name) VALUES (?)", name)
    end

    def self.find(id, db)
        rows = db.execute("SELECT * FROM courses WHERE id = ?", id)
        row = rows.first
        Course.new(id: row[0], name: row[1])
    end
end
