def add(a,b)
  return a+b
end

def subtract(a,b)
  return a-b
end

def sum(a)
  if a.length == 0
    a << 0
  end
  return a.reduce(:+)
end

def multiply(a)
  if a.length > 1
    return a.reduce(1, :*)
  else
    return nil
  end
end

def power(a,b)
  return a**b
end

def factorial(n)
  if (n.is_a? Integer) && (n >= 0)
    if n == 0
      return 1
    else
      return (1..n).reduce(1, :*)
    end
  else
    return nil
  end
end
