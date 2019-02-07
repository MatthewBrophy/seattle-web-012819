class TasksApp
  def call
    system("clear")
    puts 'Welcome to Task Listr(TM)'
    puts ""

    puts 'Enter a title for this task:'
    title = gets.chomp

    puts 'Enter a description:'
    description = gets.chomp

    task = Task.new({'title' => title, 'description' => description})
    
    
    task.save
    
    tasks = Task.all
    puts ""
    render(tasks)
  end

  private

  def render(tasks)
    tasks.each.with_index(1) do |task, i|
      puts "===================="
      puts "#{task.id}. #{task.title}"
      puts "#{task.description}"
    end
  end
end
