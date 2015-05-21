def reverser
  array = yield.split(' ').collect {|i| i.reverse}
  return array.join(' ')
end

def adder(x = nil)
  x = 1 if x == nil
  yield + x
end

def repeater(times = nil)
  times = 1 if times == nil
  for j in 1..times do
    yield
  end
end
