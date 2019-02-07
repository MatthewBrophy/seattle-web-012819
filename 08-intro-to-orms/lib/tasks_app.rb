class TasksApp
  def call
    puts 'Welcome to Task Listr(TM)'

    puts 'Enter a title for this task:'
    title = gets.chomp

    puts 'Enter a description:'
    description = gets.chomp

    task = Task.new({'title' => title, 'description' => description})

    tasks = Task.all
    render(tasks)
  end

  private

  def render(tasks)
    tasks.each.with_index(1) do |task, i|
      puts "===================="
      puts "#{i}. #{task.title}"
      puts "#{task.description}"
    end
  end
end