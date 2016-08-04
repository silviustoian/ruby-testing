#write your code here
def echo(something)
   something

end

def shout(some)
  some.upcase #upcase will capitalize all

end

def repeat(some,n_o_t=2)  #initialize number of times with 2, so 1st ex good
  word= some + " "
  return (word * n_o_t).strip

end



def start_of_word(word, num)
  return word[0..num-1]
end

def first_word(word)
  word.split.first

end

def titleize(string)
  arr = string.split(' ').each { |word| word.capitalize! unless (word == "and" || word == "over" || word == "the") }
  arr[0].capitalize!
  return arr.join(' ')
end
