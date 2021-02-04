p [1,3,5,7].inject(0) {|sum, element| sum+element} # => 16
p [1,3,5,7].inject(1) {|product, element| product*element} # => 105

p [1,3,5,7].inject {|sum, element| sum+element} # => 16
p [1,3,5,7].inject {|product, element| product*element} # => 105

p [1,3,5,7].inject(:+) # => 16
p [1,3,5,7].inject(:*) # => 105
