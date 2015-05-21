def translate(phrase)
#phrase = "apple pie cherry school quiet"
  vowels = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u"]
  array = phrase.split(' ')
  array.collect do |i|
    until vowels.include?(i[0]) do
      if i[0..1] == "qu"
        i << i[0..1]
        i.slice!(0..1)
      elsif i[0..2] == "sch"
        i << i[0..2]
        i.slice!(0..2)
      else
        i << i[0]
        i.slice!(0)
      end
    end
  end
  array.collect!{|i| i << "ay"}
  return array.join(' ')
end
