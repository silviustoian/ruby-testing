def titleize(phrase)

  exception=["and" , "or" , "but" , "yet" , "for" , "nor" ,
     "so","as" , "at" , "by" , "in" , "of" , "to","the" , "a" , "an"]
  arr=phrase.split(" ").each{|word| word.capitalize! unless exception.include?(word) }
  arr[0].capitalize!
  return arr.join(' ')
end
class Book
  attr_accessor :title

  def title=(new_title)
   puts @title=titleize(new_title)
  end


end

book=Book.new

book.title=("inferno or the beggininnggnagg of the wordssr")
