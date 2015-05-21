def echo(order)
  return order
end

def shout(order)
  return order.upcase
end

def repeat(order, times=0)
  if times == 0 || times == 1
    return order+" "+order
  else
    return order + (" " + order)*(times-1)
  end
end

def start_of_word(order, n=1)
  return order[0..n-1]
end

def first_word(order)
  return order.split[0]
end

def titleize(order)
  little_words = ["a", "an", "and", "over", "under", "the", "or", "not", "but"]
  order = order.capitalize
  array = order.split
  for i in 1...array.length do
    unless little_words.include?(array[i])
      array[i].capitalize!
    end
  end
  return array.join(' ')
end

#little words: a an and over under the or
