=begin
class Todo
  def initialize()
    @task_list = []
  end

  def add_task(task) #task is a string
    fail "Can't add an empty task." if task.empty? 
    @task_list << task
  end

  def view_task_list
  # returns all the tasks expect those marked as complete
    if @task_list.empty?
      fail "The task list is empty. Please use the task_add method."
    else
      @task_list.join(", ")
    end
  end

  def complete_task(task)
  # marks a task as complete and moves to a completed task list
  completed_tasks = []
    if @task_list.include?(task) 
      @task_list.delete(task)
      completed_tasks << task
      "#{task} marked as complete."
    else
      fail "This task does not exist."
    end
  end
end

=end