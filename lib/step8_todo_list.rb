# File: lib/todo_list.rb
# Note: Code doesn't account for scenario where we want to mark one task as complete based on the todo instance and we call it using the wrong name.
# Could make it more robust with more fail messages but this should suffice for this simple scenario

class TodoList
  def initialize
    @todos = [] # will result in array of arrays ultimately with referential transparency
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @todos << todo
  end

  def incomplete
    # Returns all non-done todos
    @todos
  end

  def complete
    # Returns all complete todos
    @todos.select { |todo| todo.done? }
  end

  def give_up!
    # Marks all todos as complete
    @todos.each {|todo| todo.mark_done!} 
  end
end