=begin
require "todo_list"

RSpec.describe Todo do
  context "Methods are called in the wrong order or way" do
    it "given an empty task" do
      todo_list = Todo.new
      expect { todo_list.add_task("") }.to raise_error "Can't add an empty task."
    end
    it "task_list method called with no pending tasks" do
      todo_list = Todo.new
      expect { todo_list.view_task_list }.to raise_error "The task list is empty. Please use the task_add method."
    end
    it "trying to complete task not in list" do
      todo_list = Todo.new
      expect { todo_list.complete_task("Task 1") }.to raise_error "This task does not exist."
    end
  end
  context "Adding multiple tasks" do
    it "return task list" do
      todo_list = Todo.new
      todo_list.add_task("Task 1") 
      todo_list.add_task("Task 2")
      result = todo_list.view_task_list
      expect(result).to eq "Task 1, Task 2"
    end
    it "return task list after completing one" do
      todo_list = Todo.new
      todo_list.add_task("Task 1") 
      todo_list.add_task("Task 3")
      todo_list.add_task("Task 2")
      todo_list.complete_task("Task 2")
      todo_list.complete_task("Task 1")
      result = todo_list.view_task_list
      expect(result).to eq "Task 3"
    end
    it "returns message to after completing task" do
      todo_list = Todo.new
      todo_list.add_task("Task 1") 
      todo_list.add_task("Task 2")
      result = todo_list.complete_task("Task 2")
      expect(result).to eq "Task 2 marked as complete."
    end
  end
end

=end