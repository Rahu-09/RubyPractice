# Question:-Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.
# Answer:-
def valid_parentheses(string)
  string=string.split("")
  str=Hash.new
  str["("]=0
  string.each do |i|
    if "("==i
      str["("]+=1
    end
    if ")"==i
      if str["("]>0
        str["("]-=1
      else
        return false
      end
    end
  end
  if str["("]==0
      return true
    else
      return false
  end
end
puts valid_parentheses("hi())(")
