require 'step8_todo'
require 'step8_todo_list'

RSpec.describe "todo list integration" do
  
    it "returns incomplete todo tasks" do
      todo_list = TodoList.new
      todo1 = Todo.new("Task 1")
      todo2 = Todo.new("Task 2")
      todo_list.add(todo1)
      todo_list.add(todo2)
      result = todo_list.incomplete
      expect(result).to eq [todo1, todo2]
    end

    it "returns complete todo tasks" do
      todo_list = TodoList.new
      todo1 = Todo.new("Task 1")
      todo2 = Todo.new("Task 2")
      todo3 = Todo.new("Task 3")
      todo1.mark_done!
      todo3.mark_done!
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      result = todo_list.complete
      expect(result).to eq [todo1, todo3]
    end

end