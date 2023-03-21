# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    @task = task
    @task_array = []
  end

  def task
    # Returns the task as a string - going to return as array
    fail "Can't have an empty task." if @task.empty?
    @task_array << @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @task_array[1] = "complete"
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    @task_array[1] == "complete" ? true : false
  end
end