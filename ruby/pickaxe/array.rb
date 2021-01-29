a = [1, 'cat', 3.14] # array with three elements
puts "The first element is #{a[0]}"
# set the third element
a[2] = nil
puts "The array is now #{a.inspect}"

a = ['ant', 'bee', 'cat', 'dog', 'elk']
puts a[0]
puts a[3]
# this is the same
a = %w{ ant bee cat dog elk}
puts a[0]
puts a[3]

inst_section = {
  'cello' => 'string',
  'clarinet' => 'woodwind',
  'drum' => 'percussion',
  'oboe' => 'woodwind',
  'trumpet' => 'brass',
  'violin' => 'string'
}
p inst_section['oboe']
p inst_section['cello']
p inst_section['basson']

histogram = Hash.new(0)
p histogram['ruby']
p histogram['ruby'] = histogram['ruby'] + 1
p histogram['ruby']

