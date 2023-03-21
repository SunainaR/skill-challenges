require 'step8_todo_list'

RSpec.describe TodoList do

  it "returns an empty array with no incomplete tasks added" do
    todo_list = TodoList.new
    result = todo_list.incomplete
    expect(result).to eq []
  end

  it "returns an empty array with no complete tasks added" do
    todo_list = TodoList.new
    result = todo_list.incomplete
    expect(result).to eq []
  end

  it "returns an empty array with no tasks to complete" do
    todo_list = TodoList.new
    todo_list.give_up!
    result = todo_list.complete
    expect(result).to eq []
  end
  
=begin
  it "returns error if adding todo that doesn't exist" do
    todo_list = TodoList.new
    expect{ todo_list.add(todo1) }.to raise_error "This todo doesn't exist"
  end
=end
end


