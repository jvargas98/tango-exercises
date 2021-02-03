class BookInStock
  attr_reader :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  def price_in_cents
    Integer(price*100 + 0.5) # Because floating-point numbers don’t always have an exact internalrepresentation.
                             # When we multiply 33.8 by 100, we get 3379.99999999999954525265. The Integer method would truncate
                             # this to 3379. Adding 0.5 before calling Integer rounds up the floating-point value, ensuring we get the
                             # best integer representation 
  end
end

book = BookInStock.new("isbn1", 33.80)
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"

# Virtual instance variable | virtual attribute

class BookInStock2
  attr_reader :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  def price_in_cents
    Integer(price*100 + 0.5)
  end
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

book = BookInStock2.new("isbn1", 33.80)
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
book.price_in_cents = 1234
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"

