require 'step8_todo'

RSpec.describe Todo do

  it "errors if empty task added" do
      todo = Todo.new("")
      expect { todo.task }.to raise_error "Can't have an empty task."
  end

  it "add a new incomplete task as array" do
    todo = Todo.new("Task 1")
    result = todo.task
    expect(result).to eq ["Task 1"]
  end

  it "mark task as complete and return true" do
    todo = Todo.new("Task 1")
    todo.task
    todo.mark_done!
    result = todo.done?
    expect(result).to eq true
  end
end