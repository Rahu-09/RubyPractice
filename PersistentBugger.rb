# Question:-Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
# Answer:-
def persistence(n)
    if (n/10)==0
      return 0
    end
    c=0
    while (n/10)>0 do
      temp=n
      p=1
      while temp>0 do
        p=p*(temp%10)
        temp=temp/10
      end
      c+=1
      n=p
    end
  return c
end
puts persistence(39)
