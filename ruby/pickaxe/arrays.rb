a = [ 3.14159, "pie", 99 ]
p a.class # => Array
p a.length # => 3
p a[0] # => 3.14159
p a[1] # => "pie"
p a[2] # => 99
p a[3] # => nil

b = Array.new
p b.class # => Array
p b.length # => 0
p b[0] = "second"
p b[1] = "array"
p b # => ["second", "array"]

a = [ 1, 3, 5, 7, 9 ]
puts a[-1] # => 9
puts a[-2] # => 7
p a[-99] # => nil

stack = []
stack.push "red"
stack.push "green"
stack.push "blue"
p stack # => ["red", "green", "blue"]
stack.pop # => "blue"
stack.pop # => "green"
stack.pop # => "red"
p stack # => []

queue = []
queue.push "red"
queue.push "green"
p queue.shift # => "red"
p queue.shift # => "green"
p queue

array = [ 1, 2, 3, 4, 5, 6, 7 ]
p array.first(4) # => [1, 2, 3, 4]
p array.last(4) # => [4, 5, 6, 7]
