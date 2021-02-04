person = "Tim"
puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}"
puts "and a value of '#{person}'"

person1 = "Tim"
person2 = person1
person1[0] = 'J'
puts "person1 is #{person1}" # Jim
puts "person2 is #{person2}" # Jim because the strings are mutuables, the variales are references to an object, then = symbol refers to the same object

person1 = "Tim"
person2 = person1.dup # Creates a new string object with identical contents
person1[0] = "J"
puts "person1 is #{person1}"
puts "person2 is #{person2}"

person1 = "Tim"
person2 = person1
person1.freeze # prevent modifications to the object
person2[0] = "J"
