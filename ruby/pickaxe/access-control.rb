class MyClass
  def method1 # default is 'public'
    #...
  end
protected # subsequent methods will be 'protected'
  def method2 # will be 'protected'
    #...
  end
private # subsequent methods will be 'private'
  def method3 # will be 'private'
    #...
  end
public # subsequent methods will be 'public'
  def method4 # so this will be 'public'
    #...
  end
end

class MyClass
  def method1
  end
  def method2
  end
  # ... and so on
  public :method1, :method4
  protected :method2
  private :method3
end
