def titleize(phrase)
  
  exception=["and" , "or" , "but" , "yet" , "for" , "nor" ,
     "so","as" , "at" , "by" , "in" , "of" , "to","the" , "a" , "an"]
  result=phrase.split(" ").each{|word| word.capitalize! unless exception.include?(word) }
  result[0].capitalize!
  return result.join(' ')
end
class Book
  attr_accessor :title

  def title=(new_title)
   puts @title=titleize(new_title)
  end


end

book=Book.new

book.title=("inferno or the beggininnggnagg of the wordssr")
