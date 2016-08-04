#write your code here
def translate_function(word)
  vowels=["a","e","i","o","u","sch"]

  if vowels.include?(word[0])
    word+"ay"                        #if a vowel included in word on first pos  add ay
  elsif "qu".include?(word[0..1])    #if qu in first 2 position start from third
    word[2..-1]+word[0..1]+"ay"      #if qu in first 3 pos start from 4th
  elsif "qu".include?(word[1..2])    #we need the qu in the first two elseifs so it doesn't mistreat it as a consant
    word[3..-1]+word[0..2]+"ay"
  elsif (!vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])  )
    word[3..-1]+word[0..2]+"ay"
  elsif (!vowels.include?(word[0]) && !vowels.include?(word[1]))
    word[2..-1]+word[0..1]+"ay"

  elsif (!vowels.include?(word[0]))
    word[1..-1]+word[0]+"ay"


  end


end

def translate(prop)
  prop.split(" ").map { |word| translate_function(word)  }.join(" ")

end

puts translate_function("quiet")
