a = [ 1, 3, "cat" ]
h = { dog: "canine", fox: "vulpine" }

# Create Enumerators
p enum_a = a.to_enum
p enum_h = h.to_enum
p enum_a.next # => 1
p enum_h.next # => [:dog, "canine"]
p enum_a.next # => 3
p enum_h.next # => [:fox, "vulpine"]

a = [ 1, 3, "cat" ]
enum_a = a.each # create an Enumerator using an internal iterator
p enum_a.next # => 1
p enum_a.next # => 3

short_enum = [1, 2, 3].to_enum
long_enum = ('a'..'z').to_enum

loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

result = []
[ 'a', 'b', 'c' ].each_with_index {|item, index| result << [item, index] }
p result

result = []
"cat".each_char.each_with_index {|item, index| result << [item, index] }
p result

result = []
"cat".each_char.with_index {|item, index| result << [item, index] }
p result

enum = "cat".enum_for(:each_char)
p enum.to_a # => ["c", "a", "t"]

enum_in_threes = (1..10).enum_for(:each_slice, 3)
p enum_in_threes.to_a
