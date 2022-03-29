# Question:: The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

# Answer::=>
def duplicate_encode(word)
  word.downcase!
  chars=Hash.new
  word = word.split('')
  word.each do |n|
    if chars[n].nil?
      chars[n]=1
    else
      chars[n]+=1
    end
   end
    i=0
   word.each do |val|
     if chars[val]>1
      word[i]= ")"
     else
     word[i]= "("
     end
     i+=1
    end
  word.join("")
end
p duplicate_encode("Rajan")
