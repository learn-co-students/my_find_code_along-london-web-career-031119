require 'pry'

#find method literally returns the first instance of a conditional 
collection = (1..100).to_a
def my_find(collection)
    i = 0
    while i < collection.length
      return collection[i] if yield(collection[i])
      i = i + 1
    end
  end
my_find(collection) {|x| x % 3 == 0 and x % 5 == 0 }
# The purpose of the find method is to return the 
# first element in the array that evaluates to true 
# not the return value itself. 
# Therefore, 
# let's use the return value to set a conditional. In other words, we want to say something like: