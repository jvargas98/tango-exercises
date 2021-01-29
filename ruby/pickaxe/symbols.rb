inst_section1 = {
  :cello => 'string',
  :clarinet => 'woodwind',
  :drum => 'percussion',
  :oboe => 'woodwind',
  :trumpet => 'brass',
  :violin => 'string'
}
p inst_section1[:oboe] # => "woodwind"
p inst_section1[:cello] # => "string"
# Note that strings aren't the same as symbols...
p inst_section1['cello'] # => nil

inst_section2 = {
cello: 'string',
clarinet: 'woodwind',
drum: 'percussion',
oboe: 'woodwind',
trumpet: 'brass',
violin: 'string'
}
puts "An oboe is a #{inst_section2[:oboe]} instrument"
