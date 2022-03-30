# Question:- Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
#Answer:-
def duplicate_count(text)
    text.downcase!
    text=text.split('')
    count=Hash.new
    c=0
    text.each do |i|
      if count[i].nil?
        count[i]=1
      else
        count[i]+=1
      end
    end
    count.each do |key,val|
      if count[key]>1
        c+=1
      end
    end
  return c
end

p duplicate_count("Rajan")
