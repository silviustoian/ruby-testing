#write your code here

def add(x,y)
  x+y
end

def subtract(x,y)
  x-y
end

def sum(array)
  total=0
  array.each{|n| total+=n}
  total
end

def multiply(*numbers)
  result=1
  numbers.each {|n| result*=n}
  result
end

def power(x,y)
  x**y

end

def factorial(n)
  if n==0
    return 0
  else
  (1..n).inject(:*) || 1

end

end

puts factorial(10)
