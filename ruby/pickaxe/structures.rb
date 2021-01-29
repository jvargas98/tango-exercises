today = Time.now

if today.saturday?
  puts 'Do chores around the house'
elsif today.sunday?
  puts 'Relax'
else
  puts 'Go to work'
end

radiation = 4000

if radiation > 3000
  puts 'Danger, Will Robinson'
end

puts 'Danger, Will Robinson' if radiation > 3000


square = 4
while square < 1000
  square = square * square
end

puts square

square = 4
square = square * square while square < 1000
puts square
