# [Todo List] Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user  
> So that I can keep track of my tasks  
> I want a program that I can add todo tasks to and see a list of them.

> As a user    
> So that I can focus on tasks to complete  
> I want to mark tasks as complete and have them disappear from the list.

* Going to assume they move to a completed list after completion rather than being deleted
* Going to assume they want to return as string for view_task_list
* Going to allow user to complete tasks or add tasks one at a time (May change this in the future).

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Todo
  def initialize()
    @task_list = []
  end

  def add_task(task) #task is a string
  end

  def view_task_list
  # returns all the tasks except those marked as complete
  end

  def complete_task(task)
  # marks a task as complete and moves to a completed task list
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
todo_list = Todo.new
todo_list.add_task("") 
# => fail "Can't add an empty task."

# 2
todo_list = Todo.new
todo_list.add_task("Task 1") 
todo_list.add_task("Task 2")
todo_list.view_task_list
# => "Task 1, Task 2"

=begin
No longer needed

todo_list = Todo.new
todo_list.add_task("Task 1") 
todo_list.add_task("Task 2")
todo_list.complete_task("Task 2")
todo_list.view_task_list
# => "Task 1"
=end

# 3
todo_list = Todo.new
todo_list.view_task_list
# => fail "The task list is empty. Please use the task_add method."

# 4
todo_list = Todo.new
todo_list.complete_task("Task 1")
# => fail "This task does not exist."

# 5
todo_list = Todo.new
todo_list.add_task("Task 1") 
todo_list.add_task("Task 3")
todo_list.add_task("Task 2")
# todo_list.complete_task("Task 2", "Task 1")
todo_list.complete_task("Task 2")
todo_list.complete_task("Task 1")
todo_list.view_task_list
# => "Task 3"

# 6
todo_list = Todo.new
todo_list.add_task("Task 1") 
todo_list.add_task("Task 2")
todo_list.complete_task("Task 2")
=> "Task 2 marked as complete."

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._