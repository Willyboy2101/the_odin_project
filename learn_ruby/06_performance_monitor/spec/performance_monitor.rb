require "time"

def measure(n = 1)
  beginning_time = Time.now
  for n in 1..n do
    yield
  end
  ending_time = Time.now
  return (ending_time - beginning_time)/n
end
